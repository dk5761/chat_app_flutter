import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomBottomNavigationBarItem extends ConsumerWidget {
  const CustomBottomNavigationBarItem({Key? key, required this.icon, this.text})
      : super(key: key);

  final IconData icon;
  final String? text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 20,
      child: Column(children: [
        Icon(icon),
        const SizedBox(
          height: 3,
        ),
        if (text != null) Text(text.toString())
      ]),
    );
  }
}
