import 'dart:math';

import 'package:flutter/material.dart';

/// 动画页面
class AnimatedPage extends StatefulWidget {
  AnimatedPage({Key? key}) : super(key: key);

  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage>
    with TickerProviderStateMixin {
  Duration duration = Duration(milliseconds: 300);
  var spacing = 80.0;
  var width = 100.0;
  var height = 100.0;
  var padding = 0.0;
  var top = 0.0;
  var left = 0.0;
  var right = 0.0;
  var bottom = 0.0;
  var alignment = Alignment.center;
  var crossFirst = true;
  var opacity = 1.0;
  var playing = false;
  var size = 100.0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPage'),
      ),
      body: SafeArea(
        left: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  // 点击改变边距
                  this.padding = padding == 0 ? 30 : 0;
                  setState(() {});
                },
                child: AnimatedPadding(
                  duration: duration,
                  curve: Curves.easeIn,
                  // 设置边距
                  padding: EdgeInsets.all(padding),
                  child: DescContainer(
                    height: height,
                    width: width,
                    color: Colors.blue,
                    text: 'AnimatedPadding',
                  ),
                ),
              ),
              SizedBox(
                height: spacing,
                width: spacing,
              ),
              GestureDetector(
                onTap: () {
                  var x = Random.secure().nextInt(3);
                  var y = Random.secure().nextInt(3);
                  // Alignment 设置对齐方式是由 [-1、0、1] 设置 x 和 y 来组成的
                  this.alignment = Alignment(x - 1, y - 1);
                  setState(() {});
                },
                // 背景
                child: Container(
                  height: 200,
                  color: Colors.grey[350],
                  child: AnimatedAlign(
                    // 设置对齐方式
                    alignment: alignment,
                    duration: duration,
                    child: DescContainer(
                      height: 60,
                      width: 180,
                      color: Colors.amber,
                      text: 'AnimatedAlign',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: spacing,
                width: spacing,
              ),
              GestureDetector(
                onTap: () {
                  this.top = top == 0 ? 20 : 0;
                  this.left = left == 0 ? 30 : 0;
                  this.right = right == 0 ? 40 : 0;
                  this.bottom = bottom == 0 ? 80 : 0;
                  setState(() {});
                },
                child: Container(
                  height: 200,
                  color: Colors.grey[350],
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      AnimatedPositioned(
                        duration: duration,
                        curve: Curves.decelerate,
                        top: top,
                        left: left,
                        child: DescContainer(
                          height: 60,
                          width: 180,
                          color: Colors.cyan,
                          text: 'AnimatedPositioned',
                        ),
                      ),
                      AnimatedPositioned(
                        duration: duration,
                        curve: Curves.decelerate,
                        right: right,
                        bottom: bottom,
                        child: DescContainer(
                          height: 60,
                          width: 180,
                          color: Colors.amber,
                          text: 'AnimatedPositioned',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: spacing,
                width: spacing,
              ),
              GestureDetector(
                onTap: () {
                  this.opacity = opacity == 1 ? 0.5 : 1;
                  setState(() {});
                },
                child: AnimatedOpacity(
                  // 设置透明度
                  opacity: opacity,
                  // 设置动画时长
                  duration: duration,
                  // 设置动画曲线
                  curve: Curves.easeOut,
                  child: DescContainer(
                    height: 60,
                    width: 300,
                    color: Colors.purple,
                    text:
                        'AnimatedOpacity opacity:${opacity.toStringAsFixed(2)}',
                  ),
                ),
              ),
              SizedBox(
                height: spacing,
                width: spacing,
              ),
              GestureDetector(
                onTap: () {
                  // 点击切换
                  this.crossFirst = !crossFirst;
                  setState(() {});
                },
                child: AnimatedCrossFade(
                  // 第一个 child
                  firstChild: DescContainer(
                    height: 60,
                    width: width,
                    color: Colors.black,
                    text: 'AnimatedCrossFade firstChild',
                  ),
                  // 第二个 child
                  secondChild: DescContainer(
                    height: 40,
                    width: 300,
                    color: Colors.pink,
                    text: 'AnimatedCrossFade secondChild',
                  ),
                  // 切换显示 child
                  crossFadeState: crossFirst
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: duration,
                  layoutBuilder:
                      (topChild, topChildKey, bottomChild, bottomChildKey) {
                    return Stack(
                      clipBehavior: Clip.none,
                      // 这里设置居中对齐
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                          key: topChildKey,
                          child: topChild,
                        ),
                        Positioned(
                          key: bottomChildKey,
                          // 去掉左边和右边定位
                          // left: 0.0,
                          top: 0.0,
                          // right: 0.0,
                          child: bottomChild,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: spacing,
                width: spacing,
              ),
              SizedBox(
                height: spacing,
                width: spacing,
              ),
              GestureDetector(
                onTap: () {
                  this.size = size == 200 ? 100 : 200;
                  setState(() {});
                },
                child: AnimatedSize(
                  duration: duration,
                  // 这里要混入 TickerProviderStateMixin 才可以
                  vsync: this,
                  clipBehavior: Clip.antiAlias,
                  alignment: Alignment.center,
                  child: FlutterLogo(
                    size: size,
                  ),
                  // child: DescContainer(
                  //   color: Colors.pink[300]!,
                  //   height: size,
                  //   width: size,
                  //   text: 'AnimatedSize',
                  // ),
                ),
              ),
              SizedBox(
                height: spacing,
                width: spacing,
              ),
              SizedBox(
                height: spacing,
                width: spacing,
              ),
              GestureDetector(
                onTap: () {
                  this.playing = !playing;
                  setState(() {});
                },
                child: AnimatedSwitcher(
                  duration: duration,
                  transitionBuilder: (child, animation) {
                    // return ScaleTransition(
                    //   scale: animation,
                    //   child: child,
                    // );
                    // return FadeTransition(
                    //   opacity: animation,
                    //   child: child,
                    // );
                    return ScaleTransition(
                      scale: animation,
                      child: FadeTransition(
                        opacity: animation,
                        child: child,
                      ),
                    );
                  },
                  child: Icon(
                    playing ? Icons.pause_circle : Icons.play_circle,
                    // 这里的 key 非常重要
                    key: ValueKey(playing),
                    size: 80,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                height: spacing,
                width: spacing,
              ),
              SizedBox(
                height: spacing,
                width: spacing,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 通用描述容器
class DescContainer extends StatelessWidget {
  const DescContainer({
    Key? key,
    required this.color,
    required this.height,
    required this.width,
    required this.text,
  }) : super(key: key);
  // 背景颜色
  final Color color;
  // 宽度
  final double width;
  // 高度
  final double height;
  // 文字
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
      width: width,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
