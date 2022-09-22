import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RichTextWidget extends ConsumerWidget {
  const RichTextWidget({Key? key, required this.text, this.style})
      : super(key: key);

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
          )
        ],
        style: style ??
            const TextStyle(
                fontSize: 34, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
