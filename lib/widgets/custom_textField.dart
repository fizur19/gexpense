import 'package:flutter/material.dart';
import 'package:gexpense/const/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final bool? isEnable;
  final TextEditingController? controller;
  final Icon? icon;
  final TextStyle? style;
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    super.key,
    required this.title,
    this.isEnable,
    this.controller,
    this.icon,
    this.style,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: TextFormField(
        controller: controller,
        readOnly: isEnable ?? false,

        cursorColor: AppColors.labelColor,
        cursorHeight: 18,
        // expands: true,
        maxLines: 1,
        style: style ??
            TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.textColor1,
            ),
        onChanged: onChanged,

        decoration: InputDecoration(
          prefixIcon: icon,
          isDense: true,
          isCollapsed: true,
          constraints: BoxConstraints(maxHeight: 40),
          alignLabelWithHint: true,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          enabled: true,
          focusColor: Colors.transparent,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          labelText: title,
          labelStyle: const TextStyle(
            color: AppColors.labelColor,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
