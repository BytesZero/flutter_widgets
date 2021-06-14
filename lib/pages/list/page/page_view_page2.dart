import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/list_data.dart';

/// PageView 页面
class PageViewPage2 extends StatefulWidget {
  PageViewPage2({Key? key}) : super(key: key);

  @override
  _PageViewPage2State createState() => _PageViewPage2State();
}

class _PageViewPage2State extends State<PageViewPage2> {
  // 当前子项索引
  int currentIndex = 0;
  // 子项集
  late List<Widget> children;
  // 控制器
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    // 初始化子项集合
    children = [
      PageDetails(title: '首页'),
      PageDetails(title: '消息'),
      PageDetails(title: '我的'),
    ];
    // 初始化控制器
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView - ZeroFlutter'),
      ),
      // 这里改为 PageView
      // body: PageView(
      //   scrollDirection: Axis.vertical,
      //   // 设置控制器
      //   controller: _controller,
      //   // 设置子项集
      //   children: children,
      //   // 添加页面滑动改变后，去改变索引变量刷新页面来更新底部导航
      //   onPageChanged: (value) {
      //     currentIndex = value;
      //     setState(() {});
      //   },
      // ),
      // body: PageView.builder(
      //   itemBuilder: (context, index) {
      //     return getItem(index);
      //   },
      //   itemCount: 3,
      // ),
      body: PageView.custom(
        // SliverChildListDelegate
        // childrenDelegate: SliverChildListDelegate(children),
        // SliverChildBuilderDelegate
        childrenDelegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return getItem(index);
          },
          childCount: 3,
        ),
      ),
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        // 当前页面索引
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
          // _controller.jumpToPage(currentIndex);
          _controller.animateToPage(
            currentIndex,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
      ),
    );
  }

  // 获取子项 Widget
  Widget getItem(index) {
    // 项目中准备好的数据
    var item = listData[index];
    // 返回子项 Widget
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 背景图
          Image.network(item.url),
          // 标题
          Positioned(
            top: 20,
            child: Text(item.title),
          ),
          // 描述
          Positioned(
            bottom: 40,
            child: Text(item.desc),
          ),
        ],
      ),
    );
  }
}

/// 页面详情
class PageDetails extends StatefulWidget {
  PageDetails({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _PageDetailsState createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails>
    with AutomaticKeepAliveClientMixin {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    // 这里的打印可以记录一下，后面会用到
    print('PageDetails build title:${widget.title}');
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          count += 1;
          setState(() {});
        },
        child: Center(
          child: Text('${widget.title} count:$count'),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
