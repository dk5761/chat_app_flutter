import 'package:chat_app/features/onBoarding/presentation/pages/pageview_pages/home_page.dart';
import 'package:chat_app/features/onBoarding/presentation/pages/pageview_pages/login_page.dart';
import 'package:chat_app/features/onBoarding/presentation/pages/pageview_pages/update_user_page.dart';
import 'package:chat_app/features/onBoarding/presentation/widgets/onBoarding_pageView.dart';
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
