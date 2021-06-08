import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/list_data.dart';

/// GridView 页面
class GridViewPage extends StatefulWidget {
  GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView 4 种构建方式'),
      ),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     mainAxisSpacing: 6,
      //     crossAxisSpacing: 12,
      //     childAspectRatio: 4 / 3,
      //   ),
      //   children: List.generate(100, (index) {
      //     return getItem(index);
      //   }),
      // ),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 110,
      //     mainAxisSpacing: 6,
      //     crossAxisSpacing: 12,
      //     childAspectRatio: 16 / 9,
      //   ),
      //   children: ListTile.divideTiles(
      //     context: context,
      //     tiles: List.generate(100, (index) {
      //       return getItem(index);
      //     }),
      //   ).toList(),
      // ),
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 140,
      //     mainAxisSpacing: 6,
      //     crossAxisSpacing: 12,
      //     childAspectRatio: 16 / 9,
      //   ),
      //   itemBuilder: (context, index) {
      //     return getItem(index);
      //   },
      // ),
      // body: GridView.count(
      //   crossAxisCount: 6,
      //   children: List.generate(100, (index) {
      //     return getItem(index);
      //   }),
      // ),
      // body: GridView.extent(
      //   maxCrossAxisExtent: 140,
      //   children: List.generate(100, (index) {
      //     return getItem(index);
      //   }),
      // ),
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 140,
          mainAxisSpacing: 6,
          crossAxisSpacing: 12,
          childAspectRatio: 16 / 9,
        ),
        childrenDelegate: SliverChildListDelegate(
          List.generate(100, (index) {
            return getItem(index);
          }),
        ),
      ),
    );
  }

  /// 获取子项目
  Widget getItem(int index) {
    var item = listData[index % 5];
    return Image.network(
      item.url,
      fit: BoxFit.cover,
    );
  }
}
