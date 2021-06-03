import 'package:flutter/material.dart';

/// 跳转
void push(BuildContext context, Widget page) async {
  Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return page;
    },
  ));
}
