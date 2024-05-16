import 'package:flutter/material.dart';

extension SizedBoxExtension on int {
  Widget h() {
    return SizedBox(height: this.toDouble());
  }

  Widget w() {
    return SizedBox(width: this.toDouble());
  }
}
