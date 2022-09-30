import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchWidget extends ConsumerStatefulWidget {
  SearchWidget({Key? key, required this.onSubmit}) : super(key: key);

  void Function(String) onSubmit;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends ConsumerState<SearchWidget> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          color: Color.fromARGB(255, 206, 204, 204)),
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 2),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Expanded(
          child: TextField(
            controller: _textEditingController,
            onSubmitted: (value) => widget.onSubmit(value),
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
        InkWell(
          onTap: () => widget.onSubmit(_textEditingController.text),
          child: const Icon(Icons.search),
        ),
      ]),
    );
  }
}
