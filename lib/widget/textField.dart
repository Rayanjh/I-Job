import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  final double border;
  final double padding;
  final IconData icon;
  final color;
  String? hintText;
  TextInputType? isEmail;


  textField({Key? key,
    required this.border,
    required this.padding,
    required this.icon,
    required this.color,
    this.hintText,
    this.isEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(border)),
        color: color,
      ),
      child: TextFormField(
        keyboardType: isEmail,
        decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(vertical: padding),
          hintText: hintText,
          prefixIcon: Icon(
            icon,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              color: Color(0xFFFFFFF),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              color: Color(0xFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
