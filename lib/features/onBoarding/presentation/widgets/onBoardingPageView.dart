import 'package:chat_app/features/onBoarding/presentation/pages/pageview_pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingPageView extends ConsumerStatefulWidget {
  const OnBoardingPageView(
      {Key? key, required this.pageController, required this.pages})
      : super(key: key);

  final List<Widget> pages;
  final PageController pageController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends ConsumerState<OnBoardingPageView> {
  @override
  void dispose() {
    widget.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: widget.pages,
    );
  }
}
