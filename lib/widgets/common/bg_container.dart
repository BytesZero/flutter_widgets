import 'package:flutter/material.dart';

/// 通用背景
class BgContainer extends StatelessWidget {
  const BgContainer({
    Key? key,
    required this.child,
    this.alignment = Alignment.center,
  }) : super(key: key);
  final Widget child;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 375,
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 10),
      // 设置背景颜色
      color: Colors.green.shade400,
      // 居中
      alignment: Alignment.center,
      // 构建 Row 布局
      child: child,
    );
  }
}
