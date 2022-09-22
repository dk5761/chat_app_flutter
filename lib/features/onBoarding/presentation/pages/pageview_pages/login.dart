import 'package:chat_app/common/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../controllers/auth_controller.dart';
import '../../widgets/customTextField.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key, required this.pageController}) : super(key: key);

  final PageController pageController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final logger = Logger();
  final _formKey = GlobalKey<FormState>();
  final _node = FocusScopeNode();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get csslId => _emailController.text;
  String get password => _passwordController.text;

  @override
  void dispose() {
    // * TextEditingControllers should be always disposed
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    try {
      if (_emailController.text.isNotEmpty ||
          _passwordController.text.isNotEmpty) {
        final user = await ref
            .watch(authProvider.notifier)
            .loginOrRegister(_emailController.text, _passwordController.text);

        if (user != null) {
          widget.pageController.nextPage(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeIn);
        }
      }
    } catch (err) {
      logger.e(err);
    }
  }

  // not working for some reason test it once
  void _editingComplete(TextEditingController controller) {
    if (controller.text.isNotEmpty) {
      _node.nextFocus();
    }
  }

  void _passwordEditingComplete(TextEditingController controller) {
    if (controller.text.isNotEmpty) {
      _submit();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onTap: () => widget.pageController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: FocusScope(
              node: _node,
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(26),
                  child: Column(children: [
                    CustomTextFormField(
                      controller: _emailController,
                      placeHolder: "Email",
                      onEditingComplete: () =>
                          _editingComplete(_emailController),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter a value';
                        }
                        // if (RegExp(r'^[a-z]+$').hasMatch(value)) {
                        //   return 'Please Enter Id Numbers';
                        // }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      controller: _passwordController,
                      placeHolder: "Password",
                      hidden: true,
                      onEditingComplete: () =>
                          _passwordEditingComplete(_passwordController),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return value;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: CustomButton(
                          onTap: () => _submit(), title: "Continue"),
                    )
                  ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
