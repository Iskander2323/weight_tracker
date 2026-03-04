import 'package:flutter/material.dart';

extension HidekeyboardExtension on BuildContext{
  void hideKeyboard(){
    FocusScope.of(this).unfocus();
  }
}

extension HideKeyboardWidget on Widget {
  Widget hideKeyboardOnTap(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      behavior: HitTestBehavior.opaque,
      child: this,
    );
  }
}