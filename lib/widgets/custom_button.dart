import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  late final Color fillColor;
  late final Color borderColor;
  late final TextStyle textStyle;
  final double? width;

  CustomButton({
    Key? key,
    required this.text,
    required this.callback,
    this.width,
  })  : fillColor = AppColorPallete.customBtn,
        textStyle = AppTextStyle.customBtn,
        borderColor = Colors.black,
        super(
          key: key,
        );

  CustomButton.homePage({
    Key? key,
    required this.text,
    required this.callback,
    this.width,
  })  : fillColor = AppColorPallete.homeBtn,
        textStyle = AppTextStyle.homeBtn,
        borderColor = AppColorPallete.homeBtn,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: callback,
      child: Container(
        alignment: Alignment.center,
        width: width ?? null,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: fillColor,
          border: Border.all(
            color: borderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
