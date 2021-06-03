import 'package:flutter/material.dart';

/// 剪裁页面
class ClipPage extends StatefulWidget {
  ClipPage({Key? key}) : super(key: key);

  @override
  _ClipPageState createState() => _ClipPageState();
}

class _ClipPageState extends State<ClipPage> {
  String img1 =
      'https://images.pexels.com/photos/4588010/pexels-photo-4588010.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500';
  String img2 =
      'https://images.pexels.com/photos/1562/italian-landscape-mountains-nature.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500';

  var width = 100.0;
  var height = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipPage'),
      ),
      body: SafeArea(
        left: false,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 20,
                runSpacing: 10,
                children: [
                  Image.network(
                    img1,
                    height: height,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      img1,
                      height: height,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    child: Image.network(
                      img1,
                      height: height,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                      bottom: Radius.circular(10),
                    ),
                    child: Image.network(
                      img1,
                      height: height,
                    ),
                  ),
                  ClipOval(
                    child: Image.network(
                      img1,
                      height: height,
                    ),
                  ),
                  ClipOval(
                    child: Image.network(
                      img1,
                      width: width,
                      height: height,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipPath(
                    clipper: ClipperPath(),
                    child: Image.network(
                      img1,
                      height: height,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(60),
                    ),
                    child: Image.network(
                      img1,
                      height: height,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// 创建剪裁路径
class ClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // 连接到距离左上角3/4处
    path.lineTo(0.0, size.height / 2);
    // 第一个控制点
    var firstControlPoint = Offset(0, size.height);
    // 目标点是底部中间点
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);
    // 第二个控制点
    var secondControlPoint = Offset(size.width, size.height);
    // 目标点是右上角 3/4 处
    var secondPoint = Offset(size.width, size.height / 2);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);
    // 连接到右上角
    path.lineTo(size.width, 0.0);
    // 闭合
    path.close();
    // 返回剪裁路径
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) =>
      oldClipper.hashCode != this.hashCode;
}
