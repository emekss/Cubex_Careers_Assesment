import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  const TextFieldWidget({
    super.key,
    required this.onChanged,
    required this.text,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
        )
      ],
    );
  }
}
