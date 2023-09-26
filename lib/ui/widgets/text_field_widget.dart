import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_easy_localization/utils/colors.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key, required this.title, required this.text, required this.type});

  final String title;
  final String text;
  final TextInputType type;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tr(text),
          style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: AppColors.c0F172A),
        ),
        const SizedBox(height: 5),
        TextField(
          cursorWidth: 1,
          cursorHeight: 22,
          cursorColor: AppColors.black.withOpacity(0.2),
          keyboardType: type,
          decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            border: InputBorder.none,
            hintText: tr(title),
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColors.c64748B,
                fontFamily: "Poppins"),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
              const BorderSide(width: 1, color: AppColors.cCBD5E1),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
              const BorderSide(width: 1, color: AppColors.cCBD5E1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
              const BorderSide(width: 1, color: AppColors.cCBD5E1),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
              const BorderSide(width: 1, color: AppColors.cCBD5E1),
            ),
          ),
        ),
      ],
    );
  }
}
