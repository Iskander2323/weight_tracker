import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatefulWidget {
  const CustomPrimaryButton({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  State<CustomPrimaryButton> createState() => _CustomPrimaryButtonState();
}

class _CustomPrimaryButtonState extends State<CustomPrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 60,
          child: Text(
            widget.title, 
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}