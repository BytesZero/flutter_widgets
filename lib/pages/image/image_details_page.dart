import 'package:flutter/material.dart';
import 'package:flutter_widgets/extension/image_extension.dart';

/// 图片详情页面
class ImageDetilsPage extends StatefulWidget {
  ImageDetilsPage({Key? key}) : super(key: key);

  @override
  _ImageDetilsPageState createState() => _ImageDetilsPageState();
}

class _ImageDetilsPageState extends State<ImageDetilsPage> {
  // 图片 url
  String url =
      'https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=100';
  @override
  void initState() {
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
            // 加载图片，指定宽高
            Container(
              color: Colors.orange,
              child: Image.network(
                url,
                width: 375,
                height: 375,
                alignment: Alignment.bottomCenter,
              ),
            ),
            SizedBox(height: 10),
            // 缩放-头像
            Container(
              color: Colors.orange,
              width: 375,
              height: 375,
              alignment: Alignment.center,
              // 椭圆剪裁
              child: ClipOval(
                // 设置头像
                child: Image.network(
                  url,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // 缩放
            Container(
              color: Colors.orange,
              // 椭圆剪裁
              child: Image.network(
                url,
                width: 375,
                height: 375,
                fit: BoxFit.contain,
                alignment: Alignment.bottomRight,
              ),
            ),
            SizedBox(height: 10),
            // 缩放
            Container(
              color: Colors.orange,
              // 椭圆剪裁
              child: Image.network(
                url,
                width: 375,
                height: 375,
                fit: BoxFit.contain,
                color: Colors.blue,
                colorBlendMode: BlendMode.hue,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'icon_home_unselect.png'.icon,
                  // color: Colors.blue,
                ),
                Image.asset(
                  'icon_home_unselect.png'.icon,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
