import 'package:flutter/material.dart';

// 悬浮操作栏
class FloatActionBarPage extends StatefulWidget {
  FloatActionBarPage({Key? key}) : super(key: key);

  @override
  _FloatActionBarPageState createState() => _FloatActionBarPageState();
}

class _FloatActionBarPageState extends State<FloatActionBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatActionBar - ZeroFlutter'),
      ),
      body: Center(
        child: Text('ZeroFlutter'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        clipBehavior: Clip.antiAlias,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        /// 圆形缺口矩形
        shape: CircularNotchedRectangle(),

        /// 自动缺口形状
        // shape: AutomaticNotchedShape(
        //   // 斜角矩形
        //   // BeveledRectangleBorder(
        //   //   borderRadius: BorderRadius.circular(20),
        //   // ),
        //   // 圆角矩形
        //   RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(40),
        //   ),
        // ),
        /// 自定义形状
        // shape: MyShape(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(
              icon: Icon(Icons.home),
              label: Text('首页'),
              onPressed: () {},
            ),
            SizedBox(),
            TextButton.icon(
              icon: Icon(Icons.people),
              label: Text('我的'),
              onPressed: () {},
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: '首页',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message_rounded),
      //       label: '消息',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people),
      //       label: '我的',
      //     ),
      //   ],
      // ),
    );
  }
}

/// 自定义Shape
class MyShape extends NotchedShape {
  @override
  Path getOuterPath(Rect host, Rect? guest) {
    var path = Path();
    int wallCount = 6;
    double step = host.width / wallCount;
    double wall = host.height / 4;
    for (var i = 0; i < wallCount; i++) {
      // 上下起伏的三角波浪线
      // path.relativeLineTo(step, i.isEven ? -wall : wall);
      // 圆角波浪想
      path.relativeArcToPoint(
        Offset(step, i.isEven ? -wall : wall),
        radius: Radius.circular(20),
      );
    }
    // 分别连接到右下角、左下角、闭合左上角
    path
      ..lineTo(host.right, host.bottom)
      ..lineTo(host.left, host.bottom)
      ..close();
    return path;
  }
}
