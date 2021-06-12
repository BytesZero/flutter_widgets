import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/common/bg_container.dart';

/// Stack2 页面
class Stack2Page extends StatefulWidget {
  Stack2Page({Key? key}) : super(key: key);

  @override
  _Stack2PageState createState() => _Stack2PageState();
}

class _Stack2PageState extends State<Stack2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned、Align、Center - ZeroFlutter'),
      ),
      // body: Center(
      //   child: BgContainer(
      //     child: Stack(
      //       alignment: Alignment.center,
      //       // 设置填充方式展接受父类约束最大值
      //       fit: StackFit.expand,
      //       children: [
      //         Positioned(
      //           child: getItem('5'),
      //           //对准右下角
      //           bottom: 0,
      //           right: 0,
      //         ),
      //         Positioned(
      //           child: getItem('4'),
      //           //对准左下角
      //           bottom: 0,
      //           left: 0,
      //         ),
      //         //居中
      //         Center(
      //           child: getItem('3'),
      //         ),
      //         Positioned(
      //           child: getItem('2'),
      //           //对准右上角
      //           top: 0,
      //           right: 0,
      //         ),
      //         Positioned(
      //           child: getItem('1'),
      //           //对准左上角
      //           top: 0,
      //           left: 0,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // body: Center(
      //   child: BgContainer(
      //     child: Stack(
      //       alignment: Alignment.center,
      //       // 设置填充方式展接受父类约束最大值
      //       fit: StackFit.expand,
      //       children: [
      //         Positioned(
      //           left: 10,
      //           child: getItem('left 10'),
      //         ),
      //         Positioned(
      //           right: 10,
      //           child: getItem('right 10'),
      //         ),
      //         Positioned(
      //           width: 80,
      //           child: getItem('width 80'),
      //         ),
      //         Positioned(
      //           top: 10,
      //           child: getItem('top 10'),
      //         ),
      //         Positioned(
      //           bottom: 10,
      //           child: getItem('bottom 10'),
      //         ),
      //         Positioned(
      //           height: 80,
      //           child: getItem('height 80'),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // body: Center(
      //   child: BgContainer(
      //     child: Stack(
      //       alignment: Alignment.center,
      //       // 设置填充方式展接受父类约束最大值
      //       fit: StackFit.expand,
      //       children: [
      // Positioned(
      //   top: 10,
      //   left: 10,
      //   child: getItem('topLeft'),
      // ),
      // Positioned(
      //   top: 10,
      //   child: getItem('top 10'),
      // ),
      // Positioned(
      //   top: 10,
      //   right: 10,
      //   child: getItem('topRight'),
      // ),
      // Positioned(
      //   bottom: 10,
      //   left: 10,
      //   child: getItem('bottomLeft'),
      // ),
      // Positioned(
      //   bottom: 10,
      //   child: getItem('bottom'),
      // ),
      // Positioned(
      //   bottom: 10,
      //   right: 10,
      //   child: getItem('bottomRight'),
      // ),
      // Positioned(
      //   left: 10,
      //   right: 10,
      //   child: getItem('leftRight'),
      // ),
      // Positioned(
      //   top: 10,
      //   bottom: 10,
      //   child: getItem('topBottom'),
      // ),
      // Positioned(
      //   left: 10,
      //   width: 100,
      //   child: getItem('leftWidth 100'),
      // ),
      // Positioned(
      //   right: 10,
      //   width: 100,
      //   child: getItem('RightWidth 100'),
      // ),
      // Positioned(
      //   top: 10,
      //   height: 100,
      //   child: getItem('topHeight 100'),
      // ),
      // Positioned(
      //   bottom: 10,
      //   height: 100,
      //   child: getItem('bottomHeight 100'),
      // ),
      // Positioned(
      //   left: 10,
      //   right: 10,
      //   width: 100,
      //   child: getItem('leftRightWidth 100'),
      // ),
      // Positioned(
      //   left: 10,
      //   bottom: 10,
      //   width: 100,
      //   child: getItem('bottomLeftWidth 100'),
      // ),
      // Positioned(
      //   right: 10,
      //   top: 10,
      //   bottom: 10,
      //   child: getItem('rightTopBottom'),
      // ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Center(
        child: BgContainer(
          child: Stack(
            alignment: Alignment.center,
            // 设置填充方式展接受父类约束最大值
            fit: StackFit.loose,
            children: [
              Align(
                child: getItem('5'),
                //对齐到右下角
                alignment: Alignment.bottomRight,
              ),
              Align(
                child: getItem('4'),
                //对齐到左下角
                alignment: Alignment.bottomLeft,
              ),
              //居中
              Align(
                child: getItem('3'),
              ),
              Align(
                child: getItem('2'),
                //对齐到右上角
                alignment: Alignment.topRight,
              ),
              Align(
                child: getItem('1'),
                //对齐到左上角
                alignment: Alignment.topLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 获取子项目(这类使用了选择参数)
  Widget getItem(String index,
      {double? width = 60, double? height = 60, Color color = Colors.orange}) {
    return Container(
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
