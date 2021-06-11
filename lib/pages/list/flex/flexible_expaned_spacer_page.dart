import 'package:flutter/material.dart';

/// Flexible、Row 页面
class FlexiblePage extends StatefulWidget {
  FlexiblePage({Key? key}) : super(key: key);

  @override
  _FlexiblePageState createState() => _FlexiblePageState();
}

class _FlexiblePageState extends State<FlexiblePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row、Column、Flex 详解 - ZeroFlutter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Flexible'),
              ),
            ),
            BgContainer(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: getItem(1),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: getItem(2),
                  ),
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: getItem(3),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Expanded'),
              ),
            ),
            BgContainer(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: getItem(1),
                  ),
                  Expanded(
                    flex: 2,
                    child: getItem(2),
                  ),
                  Expanded(
                    flex: 3,
                    child: getItem(3),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Spacer'),
              ),
            ),
            BgContainer(
              child: Row(
                children: [
                  getItem(1),
                  Spacer(flex: 1),
                  getItem(2),
                  Spacer(flex: 2),
                  getItem(3)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 获取子项目
  Widget getItem(int index) {
    return Container(
      // 宽高设置 60
      width: 60,
      height: 60,
      // 设置背景色
      color: Colors.orange.shade200,
      // 设置间隙
      margin: EdgeInsets.all(2),
      // 设置子项居中
      alignment: Alignment.center,
      // 设置子项
      child: Text('$index'),
    );
  }
}

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
