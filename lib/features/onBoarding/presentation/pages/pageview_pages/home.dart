import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../common/customButton.dart';
import '../../widgets/rich_text_widget.dart';

class OnBoardHomePage extends ConsumerWidget {
  OnBoardHomePage({Key? key, required this.pageController}) : super(key: key);

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(context);

    return Stack(
      children: [
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(26.0),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        RichTextWidget(text: "Secure."),
                        RichTextWidget(text: "Private."),
                        SizedBox(
                          height: 10,
                        ),
                      ]),
                  CustomButton(
                      onTap: () => pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn),
                      title: "Get Started"),
                ],
              ),
            )),
      ],
    );
  }
}
