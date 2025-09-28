import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color? color;
  final VoidCallback ontap;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.ontap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 600,
        height: 50,
        decoration: BoxDecoration(
          color: color ?? Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(buttonText)),
      ),
    );
  }
}
