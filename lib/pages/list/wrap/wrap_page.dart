import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/list_data.dart';

/// Wrap 页面
class WrapPage extends StatefulWidget {
  WrapPage({Key? key}) : super(key: key);

  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap 详解 - ZeroFlutter'),
      ),
      // body: Wrap(
      //   children: List.generate(20, (index) => getItem(index)),
      // ),
      // body: Wrap(
      //   // 子项间距
      //   spacing: 10,
      //   // 行间距
      //   runSpacing: 20,
      //   children: List.generate(10, (index) => getItem2(index)),
      // ),
      // body: Wrap(
      //   // 方向：垂直
      //   direction: Axis.vertical,
      //   children: List.generate(20, (index) => getItem(index)),
      // ),
      body: Center(
        child: Container(
          height: 375,
          width: double.maxFinite,
          color: Colors.green.shade400,
          child: Wrap(
            spacing: 10,
            // direction: Axis.vertical,
            // alignment: WrapAlignment.spaceBetween,
            // runAlignment: WrapAlignment.end,
            // crossAxisAlignment: WrapCrossAlignment.end,
            children: List.generate(10, (index) => getItem2(index)),
          ),
        ),
      ),
    );
  }

  /// 获取子项目
  Widget getItem(int index) {
    var item = listData[index % listTotal];
    return Chip(
      // 圆形头像
      avatar: CircleAvatar(
        backgroundImage: NetworkImage(item.url),
      ),
      // 文字标签
      label: Text(item.title),
      // 删除按钮，添加后回自动设置 Icon
      onDeleted: () {},
    );
  }

  /// 获取子项目
  Widget getItem2(int index) {
    return Container(
      // 宽高设置 60
      width: 60,
      height: 60,
      // 设置背景色
      color: Colors.orange.shade200,
      // 设置间隙
      margin: EdgeInsets.all(2),
      // 设置子项居中
      alignment: Alignment.center,
      // 设置子项
      child: Text('$index'),
    );
  }
}
