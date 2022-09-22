import 'package:chat_app/common/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../controllers/auth_controller.dart';
import '../../widgets/customTextField.dart';

class UpdateUserPage extends ConsumerStatefulWidget {
  const UpdateUserPage({Key? key, required this.pageController})
      : super(key: key);

  final PageController pageController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UpdateUserPageState();
}

class _UpdateUserPageState extends ConsumerState<UpdateUserPage> {
  final logger = Logger();

  late final TextEditingController _usernameController;

  String get username => _usernameController.text;

  @override
  void initState() {
    _usernameController = TextEditingController();
    final authState = ref.read(authProvider);
    _usernameController.text = authState.user?.username ?? "";

    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    try {
      if (_usernameController.text.isNotEmpty) {
        await ref
            .watch(authProvider.notifier)
            .update(username: _usernameController.text);
      }
    } catch (err) {
      logger.e(err);
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
            child: Form(
              child: Padding(
                padding: const EdgeInsets.all(26),
                child: Column(children: [
                  CustomTextFormField(
                    controller: _usernameController,
                    placeHolder: "Username",
                    // onEditingComplete: () =>
                    //     _editingComplete(_emailController),
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
                  Align(
                    alignment: Alignment.bottomRight,
                    child:
                        CustomButton(onTap: () => _submit(), title: "Continue"),
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
