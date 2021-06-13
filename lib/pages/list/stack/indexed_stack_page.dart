import 'package:flutter/material.dart';

/// IndexedStack 页面
class IndexedStackPage extends StatefulWidget {
  IndexedStackPage({Key? key}) : super(key: key);

  @override
  _IndexedStackPageState createState() => _IndexedStackPageState();
}

class _IndexedStackPageState extends State<IndexedStackPage> {
  // 当前子项索引
  int currentIndex = 0;
  // 子项集
  late List<Widget> children;

  @override
  void initState() {
    super.initState();
    // 初始化子项集合
    children = [
      PageDetails(title: '首页'),
      PageDetails(title: '消息'),
      PageDetails(title: '我的'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStack - ZeroFlutter'),
      ),
      body: IndexedStack(
        alignment: Alignment.center,
        index: currentIndex,
        children: children,
        // children: [
        //   const PageDetails(title: '首页'),
        //   const PageDetails(title: '消息'),
        //   const PageDetails(title: '我的'),
        //   // Container(
        //   //   width: 300,
        //   //   height: 300,
        //   //   color: Colors.orange,
        //   // ),
        //   // Container(
        //   //   width: 200,
        //   //   height: 200,
        //   //   color: Colors.red,
        //   // ),
        //   // Container(
        //   //   width: 100,
        //   //   height: 100,
        //   //   color: Colors.blue,
        //   // ),
        // ],
      ),
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        // 当前索引和 IndexedStack 使用同一个变量
        currentIndex: currentIndex,
        // 导航子项集
        items: [
          // 导航子项
          BottomNavigationBarItem(
            // 图标
            icon: Icon(Icons.home),
            // 文字内容
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: '消息',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '我的',
          ),
        ],
        onTap: (value) {
          // 点击事件，用于改变当前索引，然后刷新
          currentIndex = value;
          setState(() {});
        },
      ),
    );
  }
}

/// 页面详情
class PageDetails extends StatelessWidget {
  const PageDetails({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    // 这里的打印可以记录一下，后面会用到
    print('PageDetails build title:$title');
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
