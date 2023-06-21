import 'package:flutter/material.dart';

Widget baCustomTextFormField({required IconData icon}) {
  return TextFormField(
    decoration: InputDecoration(
      prefixIconConstraints: const BoxConstraints(minWidth: 45),
      prefixIcon: Icon(
        icon,
        color: Colors.black54,
        size: 22,
      ),
      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: const BorderSide(color: Colors.black54),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: const BorderSide(color: Colors.black54),
      ),
    ),
  );
}
