import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/page_data.dart';
import '../widgets/common/common_list_tile.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: pageList.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(height: 1);
        },
        itemBuilder: (BuildContext context, int index) {
          var item = pageList[index];
          return CListTile(
            leading: '${index + 1}',
            title: item.title,
            pushPage: item.page,
          );
        },
      ),
    );
  }
}
