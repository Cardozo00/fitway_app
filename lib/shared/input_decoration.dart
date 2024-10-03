import 'package:flutter/material.dart';

InputDecoration getAutenticationInputDecoration(String label) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
    hintText: label,
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: const BorderSide(color: Colors.transparent)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.black)),
  );
}
