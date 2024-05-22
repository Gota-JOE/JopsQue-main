import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  //final controller = Get.put(CreateAccountController());
  final String labelText;
  final String hintText;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;

  final prefixIcon;
  final suffixIcon;
  final obscureText;
  final validator;
  final TextEditingController? controller;
  void Function(String)? onChanged;


  CustomTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
    this.validator,
    this.onChanged, this.controller, this.textStyle, this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          obscureText: obscureText,
          decoration: InputDecoration(
              prefixIcon: prefixIcon,
              //Icon(Icons.person_outline_outlined),
              labelText: labelText,
              hintText: hintText,
              hintStyle: hintStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              suffixIcon: suffixIcon),
          validator: validator,
        ),
      ]),
    );
  }
}
/*if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }

                if (value.length < 8) {
                  return 'Password must be at least 8 characters';
                }

                return null;
              },*/
