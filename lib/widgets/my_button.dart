import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onTap,
    required this.hintText,
  });

  final Function()? onTap;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            hintText,
          ),
        ),
      ),
    );
  }
}
