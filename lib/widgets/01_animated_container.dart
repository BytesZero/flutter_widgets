import 'dart:math';

import 'package:flutter/material.dart';

/// #1 AnimatedContainer
class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  // 定义属性
  double width = 200;
  double height = 100;
  double padding = 10;
  Color color = Colors.blueAccent;
  Alignment alignment = Alignment.center;
  double borderWidth = 4;
  double radius = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   width: width,
            //   height: height,
            //   padding: EdgeInsets.all(padding),
            //   color: color,
            //   alignment: alignment,
            //   child: Text(
            //     'ZeroFlutter',
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            // SizedBox(width: 30),
            AnimatedContainer(
              width: width,
              height: height,
              padding: EdgeInsets.all(padding),
              margin: EdgeInsets.all(padding),
              // color: color,
              alignment: alignment,
              duration: const Duration(milliseconds: 500),
              decoration: BoxDecoration(
                color: color,
                border: Border.all(
                  width: borderWidth,
                  color: color.withOpacity(0.4),
                ),
                borderRadius: BorderRadius.circular(radius),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: radius,
                    offset: Offset.zero,
                  )
                ],
              ),
              child: Text(
                'ZeroFlutter',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow_rounded),
        onPressed: () {
          play();
        },
      ),
    );
  }

  void play() async {
    var width = Random.secure().nextInt(150);
    var height = Random.secure().nextInt(100);
    var padding = Random.secure().nextInt(30);
    var a = Random.secure().nextInt(256);
    var r = Random.secure().nextInt(256);
    var g = Random.secure().nextInt(256);
    var b = Random.secure().nextInt(256);
    var x = Random.secure().nextInt(3);
    var y = Random.secure().nextInt(3);
    var borderWidth = Random.secure().nextInt(10);
    var radius = Random.secure().nextInt(30);

    this.width = width.toDouble() + 200;
    this.height = height.toDouble() + 100;
    this.padding = padding.toDouble();
    this.color = Color.fromARGB(255, r, g, b);
    this.alignment = Alignment(x - 1, y - 1);
    this.borderWidth = borderWidth.toDouble();
    this.radius = radius.toDouble();
    setState(() {});
  }
}
