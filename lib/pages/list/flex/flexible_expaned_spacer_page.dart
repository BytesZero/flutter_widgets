import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/common/bg_container.dart';

/// Flexible、Expanded、Spacer 页面
class FlexibleExpandedSpacerPage extends StatefulWidget {
  FlexibleExpandedSpacerPage({Key? key}) : super(key: key);

  @override
  _FlexibleExpandedSpacerPageState createState() =>
      _FlexibleExpandedSpacerPageState();
}

class _FlexibleExpandedSpacerPageState
    extends State<FlexibleExpandedSpacerPage> {
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
