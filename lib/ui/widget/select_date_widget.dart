import 'package:flutter/material.dart';

class SelectDateWidget extends StatefulWidget {
  const SelectDateWidget({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  State<SelectDateWidget> createState() => _SelectDateWidgetState();
}

class _SelectDateWidgetState extends State<SelectDateWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        alignment: Alignment.center,
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green
        ),
        child: Text(widget.title, 
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white
        ),),
      ),
    );
  }
}