import 'package:flutter/material.dart';

/// Column、Row 页面
class ColumnRowPage extends StatefulWidget {
  ColumnRowPage({Key? key}) : super(key: key);

  @override
  _ColumnRowPageState createState() => _ColumnRowPageState();
}

class _ColumnRowPageState extends State<ColumnRowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row、Column、Flex 详解 - ZeroFlutter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BgContainer(
              child: Row(
                // MainAxisSize.max
                mainAxisSize: MainAxisSize.max,
                children: List.generate(3, (index) => getItem(index)),
              ),
            ),
            BgContainer(
              child: Row(
                // MainAxisSize.min
                mainAxisSize: MainAxisSize.min,
                children: List.generate(3, (index) => getItem(index)),
              ),
            ),
            BgContainer(
              child: Row(
                // MainAxisAlignment.start
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(3, (index) => getItem(index)),
              ),
            ),
            BgContainer(
              child: Row(
                // MainAxisAlignment.center
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => getItem(index)),
              ),
            ),
            BgContainer(
              child: Row(
                // MainAxisAlignment.center
                mainAxisAlignment: MainAxisAlignment.end,
                children: List.generate(3, (index) => getItem(index)),
              ),
            ),
          ],
        ),
      ),
      // body: Center(
      //   // 添加背景
      //   child: Container(
      //     height: 375,
      //     width: double.maxFinite,
      //     // 设置背景颜色
      //     color: Colors.green.shade400,
      //     // 居中
      //     // alignment: Alignment.center,
      //     // 构建 Column 布局
      //     child: Column(
      //       mainAxisSize: MainAxisSize.max,
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.baseline,
      //       textBaseline: TextBaseline.alphabetic,
      //       // 构建 3 个 Item
      //       children: List.generate(3, (index) => getItem(index)),
      //     ),
      //   ),
      // ),
      // body: Center(
      //   // 添加背景
      //   child: Container(
      //     height: 375,
      //     width: double.maxFinite,
      //     // 设置背景颜色
      //     color: Colors.green.shade400,
      //     // 居中
      //     // alignment: Alignment.center,
      //     // 构建 Column 布局
      //     child: Flex(
      //       direction: Axis.vertical,
      //       mainAxisSize: MainAxisSize.max,
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.baseline,
      //       textBaseline: TextBaseline.alphabetic,
      //       // 构建 3 个 Item
      //       children: List.generate(3, (index) => getItem(index)),
      //     ),
      //   ),
      // ),
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
