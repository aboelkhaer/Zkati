import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final Function? onChanged;
  const CustomTextFormField(
      {Key? key,
      required this.title,
      required this.controller,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      maxLines: 1,
      decoration: InputDecoration(
        labelText: title,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Color(0xFF8B80F8),
            width: 2.0,
          ),
        ),
      ),
      onChanged: (String value) => onChanged!(controller.text),
      controller: controller,
      inputFormatters: [
        LengthLimitingTextInputFormatter(20),
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
    );
  }
}
