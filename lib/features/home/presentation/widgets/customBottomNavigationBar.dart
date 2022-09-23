import 'package:chat_app/features/home/presentation/widgets/customBottomNavigationBarItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomBottomNavigationBar extends ConsumerStatefulWidget {
  const CustomBottomNavigationBar(
      {Key? key, required this.items, required this.onTap})
      : super(key: key);

  final List<CustomBottomNavigationBarItem> items;
  final ValueChanged<int>? onTap;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState
    extends ConsumerState<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 70,
    //   padding: const EdgeInsets.symmetric(horizontal: 50),
    //   // width: double.infinity,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: widget.items.length,
    //     itemBuilder: (context, index) {
    //       return GestureDetector(
    //         onTap: () => widget.onTap!(index),
    //         child: Container(
    //             margin: const EdgeInsets.symmetric(horizontal: 10),
    //             child: widget.items[index]),
    //       );
    //     },
    //   ),
    // );

    return SafeArea(
      minimum: const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (final item in widget.items)
            InkWell(
              onTap: () => widget.onTap!(widget.items.indexOf(item)),
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRect(
                      clipBehavior: Clip.antiAlias,
                      child: SizedBox(
                          height: 70,
                          child: widget.items[widget.items.indexOf(item)]))),
            )
        ],
      ),
    );
  }
}
