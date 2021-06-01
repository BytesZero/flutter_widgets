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
  Color color = Colors.blueAccent;
  Alignment alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: width,
          height: height,
          color: color,
          duration: const Duration(milliseconds: 500),
          alignment: alignment,
          child: Text(
            'ZeroFlutter',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
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
    var a = Random.secure().nextInt(256);
    var r = Random.secure().nextInt(256);
    var g = Random.secure().nextInt(256);
    var b = Random.secure().nextInt(256);
    var x = Random.secure().nextInt(3);
    var y = Random.secure().nextInt(3);
    this.width = width.toDouble() + 200;
    this.height = height.toDouble() + 100;
    this.color = Color.fromARGB(255, r, g, b);
    this.alignment = Alignment(x - 1, y - 1);
    setState(() {});
  }
}
