import 'dart:math';

import 'package:flutter/material.dart';

/// 动画页面
class AnimatedPage extends StatefulWidget {
  AnimatedPage({Key? key}) : super(key: key);

  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  String img1 =
      'https://images.pexels.com/photos/4588010/pexels-photo-4588010.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500';
  String img2 =
      'https://images.pexels.com/photos/1562/italian-landscape-mountains-nature.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500';
  Duration duration = Duration(milliseconds: 300);
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
                  this.padding = padding == 0 ? 30 : 0;
                  setState(() {});
                },
                child: AnimatedPadding(
                  duration: duration,
                  curve: Curves.easeIn,
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
                height: 20,
                width: 20,
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
                height: 20,
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  var x = Random.secure().nextInt(3);
                  var y = Random.secure().nextInt(3);
                  this.alignment = Alignment(x - 1, y - 1);
                  setState(() {});
                },
                child: Container(
                  height: 200,
                  color: Colors.grey[350],
                  child: AnimatedAlign(
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
                height: 20,
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  this.opacity = opacity == 1 ? 0.5 : 1;
                  setState(() {});
                },
                child: AnimatedOpacity(
                  opacity: opacity,
                  duration: duration,
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
                height: 20,
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  this.crossFirst = !crossFirst;
                  setState(() {});
                },
                child: AnimatedCrossFade(
                  firstChild: DescContainer(
                    height: 60,
                    width: width,
                    color: Colors.black,
                    text: 'AnimatedCrossFade firstChild',
                  ),
                  secondChild: DescContainer(
                    height: 60,
                    width: 300,
                    color: Colors.pink,
                    text: 'AnimatedCrossFade secondChild',
                  ),
                  crossFadeState: crossFirst
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: duration,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DescContainer extends StatelessWidget {
  const DescContainer({
    Key? key,
    required this.color,
    required this.height,
    required this.width,
    required this.text,
  }) : super(key: key);
  final Color color;
  final double height;
  final double width;
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
