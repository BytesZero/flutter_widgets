import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/list_data.dart';

/// ListView 页面
class ListViewPage extends StatefulWidget {
  ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView 4 种构建方式'),
      ),
      // body: ListView(
      //   children: List.generate(100, (index) {
      //     return getItem(index);
      //   }),
      // ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: List.generate(100, (index) {
            return getItem(index);
          }),
        ).toList(),
      ),
      // body: ListView.separated(
      //   itemBuilder: (context, index) {
      //     return getItem(index);
      //   },
      //   separatorBuilder: (context, index) =>
      //       index.isOdd ? Divider(height: 10) : SizedBox(),
      //   itemCount: 80,
      // ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return getItem(index);
      //   },
      //   itemCount: 20,
      // ),
      // body: ListView.builder(
      //   // 设置横向滚动
      //   scrollDirection: Axis.vertical,
      //   itemBuilder: (context, index) {
      //     return SizedBox(
      //       width: 300,
      //       child: getItem(index),
      //     );
      //   },
      //   itemCount: 20,
      // ),
      // body: ListView.custom(
      //   childrenDelegate: SliverChildBuilderDelegate(
      //     (BuildContext context, int index) {
      //       return getItem(index);
      //     },
      //     childCount: 100,
      //   ),
      // ),
    );
  }

  /// 获取子项目
  Widget getItem(int index) {
    var item = listData[index % listTotal];
    return ListTile(
      leading: Image.network(
        item.url,
        width: 80,
        height: 60,
        fit: BoxFit.cover,
      ),
      title: Text(item.title),
      subtitle: Text(item.desc),
      trailing: Icon(Icons.keyboard_arrow_right_outlined),
      onTap: () {
        print('index');
      },
      onLongPress: () {
        print('${item.desc}');
      },
    );
  }
}
