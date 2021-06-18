import 'package:flutter/material.dart';

// 悬浮操作栏
class FloatActionBarPage extends StatefulWidget {
  FloatActionBarPage({Key? key}) : super(key: key);

  @override
  _FloatActionBarPageState createState() => _FloatActionBarPageState();
}

class _FloatActionBarPageState extends State<FloatActionBarPage> {
  int currentIndex = 0;
  List<FloatingActionButtonLocation> locationList = [
    FloatingActionButtonLocation.startFloat,
    FloatingActionButtonLocation.centerFloat,
    FloatingActionButtonLocation.endFloat,
    FloatingActionButtonLocation.startDocked,
    FloatingActionButtonLocation.centerDocked,
    // FloatingActionButtonLocation.miniCenterDocked,
    FloatingActionButtonLocation.endDocked,
    FloatingActionButtonLocation.startTop,
    FloatingActionButtonLocation.centerTop,
    FloatingActionButtonLocation.endTop,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton - ZeroFlutter'),
      ),
      body: Center(
        child: Text('ZeroFlutter'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          currentIndex += 1;
          setState(() {});
        },
        tooltip: '${locationList[currentIndex % locationList.length]}',
      ),
      // floatingActionButton: SizedBox(
      //   width: 80,
      //   height: 80,
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add),
      // backgroundColor: Colors.orange,
      // foregroundColor: Colors.orange,
      // splashColor: Colors.orange,
      // elevation: 6,
      // highlightElevation: 12,
      // mini: true,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      // shape: ContinuousRectangleBorder(
      //   side: BorderSide(
      //     width: 4,
      //     color: Colors.orange,
      //   ),
      //   borderRadius: BorderRadius.circular(12),
      // ),
      // shape: BeveledRectangleBorder(
      //   side: BorderSide(
      //     width: 4,
      //     color: Colors.orange,
      //   ),
      //   borderRadius: BorderRadius.circular(12),
      // ),
      // onPressed: () {
      // currentIndex += 1;
      // setState(() {});
      // },
      // tooltip: '${locationList[currentIndex % locationList.length]}',
      //   ),
      // ),
      // floatingActionButton: Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     FloatingActionButton(
      //       child: Icon(Icons.ac_unit_rounded),
      //       backgroundColor: Colors.orange,
      //       heroTag: 'tag1',
      //       onPressed: () {},
      //     ),
      //     SizedBox(height: 10),
      //     FloatingActionButton(
      //       child: Icon(Icons.adb_sharp),
      //       backgroundColor: Colors.green,
      //       heroTag: 'tag2',
      //       onPressed: () {},
      //     ),
      //     SizedBox(height: 10),
      //     FloatingActionButton(
      //       child: Icon(Icons.more_horiz_outlined),
      //       heroTag: 'tag3',
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      floatingActionButtonLocation:
          locationList[currentIndex % locationList.length],
      bottomNavigationBar: BottomAppBar(
        /// 圆形缺口矩形
        shape: CircularNotchedRectangle(),

        /// 自动缺口形状
        // shape: AutomaticNotchedShape(
        // 斜角矩形
        // BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(20),
        // ),
        // 圆角矩形
        // RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(40),
        // ),
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
    );
  }
}

/// 自定义Shape
class MyShape extends NotchedShape {
  @override
  Path getOuterPath(Rect host, Rect? guest) {
    var path = Path();
    int wallCount = 10;
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
