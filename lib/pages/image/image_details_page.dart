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
  // 图片 url2
  String url2 =
      'https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg';
  // 图片 url3
  String url3 =
      'https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=60';
  @override
  void initState() {
    print('l:${BlendMode.values.length}');
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
            SizedBox(height: 10),
            // 缩放
            Container(
              color: Colors.white,
              // 椭圆剪裁
              child: Image.network(
                // 'test',
                url2,
                width: 375,
                height: 375,
                frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                  if (wasSynchronouslyLoaded) {
                    return child;
                  }
                  print(
                      'frameBuilder AnimatedOpacity frame:$frame  wasSynchronouslyLoaded:$wasSynchronouslyLoaded');
                  return AnimatedOpacity(
                    opacity: frame == null ? 0 : 1,
                    duration: Duration(seconds: 2),
                    child: child,
                  );
                },
                // 加载中
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    print('loadingBuilder');
                    return child;
                  }
                  print('loadingBuilder CircularProgressIndicator');
                  return Container(
                    width: 375,
                    height: 375,
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(
                        value: loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!),
                  );
                },
                // 加载错误
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 375,
                    height: 375,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            // 重复
            Container(
              color: Colors.orange,
              child: Image.network(
                url3,
                width: 375,
                height: 375,
                fit: BoxFit.none,
                // 重复参数调配
                // repeat: ImageRepeat.noRepeat,
                // repeat: ImageRepeat.repeat,
                // repeat: ImageRepeat.repeatX,
                repeat: ImageRepeat.repeatY,
              ),
            ),
            SizedBox(height: 10),
            // 质量
            Container(
              color: Colors.orange,
              child: Image.network(
                url3,
                width: 375,
                height: 375,
                fit: BoxFit.cover,
                // 渲染质量参数调配
                filterQuality: FilterQuality.none,
                // filterQuality: FilterQuality.low,
                // filterQuality: FilterQuality.medium,
                // filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
