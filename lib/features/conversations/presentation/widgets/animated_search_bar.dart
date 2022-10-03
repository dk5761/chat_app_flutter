import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({Key? key}) : super(key: key);

  @override
  State<AnimatedSearchBar> createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
  bool _folded = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      width: _folded ? 24 : MediaQuery.of(context).size.width - 16,
      // height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
      ),
      child: Row(children: [
        Expanded(
          child: Container(
            // padding: const EdgeInsets.only(left: 16),
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 212, 207, 207)),
            child: !_folded
                ? const TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.blue),
                        border: InputBorder.none))
                : null,
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          child: InkWell(
            onTap: () {
              print("clicks");
              setState(() {
                _folded = !_folded;
              });
            },
            // child: Padding(
            // padding: const EdgeInsets.all(16.0),
            child: Icon(
              _folded ? Icons.search : Icons.close,
              color: Colors.blue[900],
            ),
          ),
        ),
        // )
      ]),
    );
  }
}
