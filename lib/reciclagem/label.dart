import 'package:flutter/material.dart';

labelComum(String text) {
  return Padding(
    padding: EdgeInsets.only(top: 20, bottom: 10),
    child: Text(
      text,
      style: TextStyle(
        color: Color(0xFF002B32),
        fontWeight: FontWeight.w300,
        fontSize: 25,
      ),
    ),
  );
}
