import 'package:flutter/material.dart';

extension SizeContext on BuildContext {
  Size getSize() {
    return MediaQuery.of(this).size;
  }
}
