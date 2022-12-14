import 'package:chat_app/features/onBoarding/presentation/pages/pageview_pages/home.dart';
import 'package:chat_app/features/onBoarding/presentation/pages/pageview_pages/login.dart';
import 'package:chat_app/features/onBoarding/presentation/pages/pageview_pages/updateUser.dart';
import 'package:chat_app/features/onBoarding/presentation/widgets/onBoardingPageView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingScreen extends ConsumerWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/splash/background.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          OnBoardingPageView(pageController: pageController, pages: [
            OnBoardHomePage(pageController: pageController),
            LoginPage(pageController: pageController),
            UpdateUserPage(pageController: pageController)
          ])
        ],
      ),
    );
  }
}
