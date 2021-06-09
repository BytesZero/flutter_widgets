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
        //   spacing: 10,
        //   runSpacing: 20,
        //   children: List.generate(20, (index) => getItem(index)),
        // ),
        body: Center(
          child: Container(
            height: 375,
            width: double.maxFinite,
            color: Colors.green.shade400,
            child: Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: List.generate(2, (index) => getItem(index)),
            ),
          ),
        ));
  }

  /// 获取子项目
  Widget getItem(int index) {
    var item = listData[index % listTotal];
    return Chip(
      avatar: CircleAvatar(
        backgroundImage: NetworkImage(item.url),
      ),
      label: Text(item.title),
      onDeleted: () {},
    );
  }
}
