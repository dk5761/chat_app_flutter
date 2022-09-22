import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomButton extends ConsumerWidget {
  const CustomButton({Key? key, required this.onTap, required this.title})
      : super(key: key);
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 50,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 2, 33, 58),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        padding: const EdgeInsets.all(12),
        child: Center(
            child: Text(
          title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
        )),
      ),
    );
  }
}
