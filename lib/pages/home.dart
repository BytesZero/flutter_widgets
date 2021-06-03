import 'package:flutter/material.dart';
import '../widgets/common/common_list_tile.dart';
import '../widgets/01_animated_container.dart';
import '../widgets/02_clip.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CListTile(
              leading: '#1',
              title: 'AnimatedContainer',
              pushPage: AnimatedContainerPage(),
            ),
            CListTile(
              leading: '#2',
              title: 'ClipRRect、ClipRect、ClipOval、ClipPath、CustomClipper',
              pushPage: ClipPage(),
            ),
          ],
        ),
      ),
    );
  }
}
