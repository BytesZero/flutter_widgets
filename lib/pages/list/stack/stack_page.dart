import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/common/bg_container.dart';

/// Stack 页面
class StackPage extends StatefulWidget {
  StackPage({Key? key}) : super(key: key);

  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack - ZeroFlutter'),
      ),
      body: Center(
        child: BgContainer(
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.passthrough,
            clipBehavior: Clip.antiAlias,
            children: [
              getItem(3, width: 120, height: 120, color: Colors.purple),
              getItem(2, width: 80, height: 80, color: Colors.blue),
              Positioned(
                left: -20,
                top: -20,
                child: getItem(1),
              ),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: BgContainer(
      //     child: Row(
      //       children: [
      //         Expanded(
      //           child: Stack(
      //             alignment: Alignment.center,
      //             fit: StackFit.passthrough,
      //             children: [
      //               getItem(3, width: 120, height: 120, color: Colors.purple),
      //               getItem(2, width: 80, height: 80, color: Colors.blue),
      //               Positioned(
      //                 left: 10,
      //                 top: 10,
      //                 child: getItem(1),
      //               ),
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  /// 获取子项目(这类使用了选择参数)
  Widget getItem(int index,
      {double? width = 60, double? height = 60, Color color = Colors.orange}) {
    return Container(
      constraints: BoxConstraints(maxWidth: width!, maxHeight: height!),
      // 宽高设置 60
      width: width,
      height: height,
      // 设置背景色
      color: color,
      // 设置间隙
      margin: EdgeInsets.all(2),
      // 设置子项居中
      alignment: Alignment.center,
      // 设置子项
      child: Text('$index'),
    );
  }
}
