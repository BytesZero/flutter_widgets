import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets/extension/image_extension.dart';

/// 图片加载页面
class ImageLoadPage extends StatefulWidget {
  ImageLoadPage({Key? key}) : super(key: key);

  @override
  _ImageLoadPageState createState() => _ImageLoadPageState();
}

class _ImageLoadPageState extends State<ImageLoadPage> {
  late Uint8List memoryData;
  @override
  void initState() {
    loadAssetImage('img_02.jpeg'.img);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image - ZeroFlutter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 加载资源内的图片
            Image.asset(
              getImg('img_01.jpeg'),
            ),
            Image.asset(
              getIcon('icon_home.png'),
              // 指定图片宽高
              width: 24,
              height: 24,
            ),
            SizedBox(height: 10),
            Image.asset(
              'img_01.jpeg'.img,
            ),
            Image.asset(
              'icon_home.png'.icon,
              // 指定图片宽高
              width: 24,
              height: 24,
            ),
            SizedBox(height: 10),
            Image.network(
              'https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=375',
            ),
            SizedBox(height: 10),
            Image.file(File('file://test.png')),
            SizedBox(height: 10),
            Image.memory(memoryData),
            SizedBox(height: 10),
            Image.asset('flutter_logo.png'.icon, package: 'flutter_icons'),
          ],
        ),
      ),
    );
  }

  // 加载资源图片
  Future<void> loadAssetImage(String path) async {
    var data = await rootBundle.load(path);
    memoryData = data.buffer.asUint8List();
    setState(() {});
  }
}

/// 获取图片全路径
String getImg(String name) {
  return 'assets/images/$name';
}

/// 获取 icon 全路径
String getIcon(String name) {
  return 'assets/icons/$name';
}
