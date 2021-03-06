import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String inputText;
  final double borderRadius;
  final Color buttonCcolor;
  final Color TextColor;
  final double h;
  final double w;
  FontWeight? weight;
  double? fontsize;
  final VoidCallback onPressed;

  button({Key? key,
    required this.inputText,
    required this.borderRadius,
    required this.h,
    required this.w,
    required this.TextColor,
    required this.buttonCcolor,
    this.weight,
    this.fontsize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        color: buttonCcolor,
        onPressed: onPressed,
          child: Text(
            inputText,
            style: TextStyle(
              color: TextColor,
              fontWeight: weight,
              fontSize: fontsize,
            ),
          ),
      ),
    );
  }
}
