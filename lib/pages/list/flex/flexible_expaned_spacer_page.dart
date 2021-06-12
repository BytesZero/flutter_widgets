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
        title: Text('Row、Expanded、Spacer - ZeroFlutter'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: BgContainer(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('Flexible'),
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: getItem(1),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.loose,
                      child: getItem(1),
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.loose,
                      child: getItem(1),
                    ),
                  ],
                ),
                // Row(
                //   children: [
                //     Flexible(
                //       flex: 1,
                //       fit: FlexFit.loose,
                //       child: getItem(1, null, 60),
                //     ),
                //     Flexible(
                //       flex: 2,
                //       fit: FlexFit.loose,
                //       child: getItem(1, null, 60),
                //     ),
                //     Flexible(
                //       flex: 3,
                //       fit: FlexFit.loose,
                //       child: getItem(1, null, 60),
                //     ),
                //   ],
                // ),
                Row(
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('Expanded'),
                  ),
                ),
                Row(
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
                // Row(
                //   children: [
                //     getItem(1),
                //     Expanded(
                //       child: Text(
                //         'ZeroFlutter 聊 Expanded，ZeroFlutter 聊 ExpandedZeroFlutter 聊 ExpandedZeroFlutter 聊 ExpandedZeroFlutter 聊 ExpandedZeroFlutter 聊 Expanded',
                //         overflow: TextOverflow.ellipsis,
                //         maxLines: 2,
                //       ),
                //     )
                //     // Expanded(
                //     //   flex: 1,
                //     //   child: getItem(1),
                //     // ),
                //     // Expanded(
                //     //   flex: 2,
                //     //   child: getItem(2),
                //     // ),
                //     // Expanded(
                //     //   flex: 3,
                //     //   child: getItem(3),
                //     // ),
                //   ],
                // ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('Spacer'),
                  ),
                ),
                Row(
                  children: [
                    getItem(1),
                    Spacer(),
                    getItem(2),
                    Spacer(flex: 2),
                    getItem(3)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 获取子项目
  Widget getItem(int index, [double? width = 60, double? height = 60]) {
    return Container(
      // 宽高设置 60
      width: width,
      height: height,
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
