import 'package:flutter/material.dart';

class AppTextStyle {
  static final TextStyle header = TextStyle(
      color: const Color(0xff283AD8),
      fontSize: 36,
      fontWeight: FontWeight.w700,
      shadows: [
        Shadow(
          color: Colors.black.withOpacity(.2),
          offset: Offset(0, 3),
          blurRadius: .3,
        )
      ]);

  static final TextStyle homeBtn = TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontSize: 24,
  );

  static final TextStyle customBtn = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: Colors.black,
  );
}
