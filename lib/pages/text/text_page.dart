import 'package:flutter/material.dart';

/// 文字页面
class TextPage extends StatefulWidget {
  TextPage({Key? key}) : super(key: key);

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text - ZeroFlutter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            // 文字
            // Container(
            //   height: 120,
            //   width: double.infinity,
            //   alignment: Alignment.center,
            //   child: Text("Text - ZeroFlutter"),
            // ),
            // 文字样式
            // Container(
            //   height: 120,
            //   width: double.infinity,
            //   alignment: Alignment.center,
            //   child: Text(
            //     "Text - ZeroFlutter",
            //     style: TextStyle(
            //       // 颜色蓝色
            //       color: Colors.blue,
            //       // 字号 24
            //       fontSize: 24,
            //       // 字重 粗
            //       fontWeight: FontWeight.bold,
            //       // 背景 橘色
            //       // backgroundColor: Colors.orange,
            //       // 高度
            //       // height: 3,
            //       // 每个文字之间的间距
            //       // letterSpacing: 4,
            //       // 每个单词之间的间距
            //       // wordSpacing: 10,
            //       // 文字样式
            //       // fontStyle: FontStyle.normal,
            //       // fontStyle: FontStyle.italic,
            //       // 文字装饰
            //       // decoration: TextDecoration.none,
            //       decoration: TextDecoration.underline,
            //       // decoration: TextDecoration.overline,
            //       // decoration: TextDecoration.lineThrough,
            //       // decorationStyle: TextDecorationStyle.solid,
            //       // decorationStyle: TextDecorationStyle.double,
            //       // decorationStyle: TextDecorationStyle.wavy,
            //       // decorationStyle: TextDecorationStyle.dotted,
            //       decorationStyle: TextDecorationStyle.wavy,
            //       decorationColor: Colors.red,
            //     ),
            //   ),
            // ),
            // 设置字体文字
            // Container(
            //   height: 120,
            //   width: double.infinity,
            //   alignment: Alignment.center,
            //   child: Text(
            //     "Text - ZeroFlutter",
            //     style: TextStyle(
            //       // 颜色蓝色
            //       color: Colors.blue,
            //       // 字号 24
            //       fontSize: 24,
            //       // 设置字体
            //       fontFamily: 'Caveat',
            //       // 设置字重
            //       fontWeight: FontWeight.w700,
            //     ),
            //   ),
            // ),

            // 设置对齐方式
            // Container(
            //   height: 120,
            //   width: double.infinity,
            //   alignment: Alignment.center,
            //   child: Text(
            //     "Text - ZeroFlutter Text - ZeroFlutter  Text - ZeroFlutter  Text - ZeroFlutter  ",
            //     // textAlign: TextAlign.center,
            //     // textAlign: TextAlign.start,
            //     // textAlign: TextAlign.end,
            //     textAlign: TextAlign.left,
            //     // textAlign: TextAlign.right,
            //     // textAlign: TextAlign.justify,
            //     textDirection: TextDirection.ltr,
            //     // textDirection: TextDirection.rtl,
            //   ),
            // ),

            // 设置换行与溢出显示样式
            // Container(
            //   color: Colors.blue,
            //   height: 120,
            //   width: 300,
            //   alignment: Alignment.center,
            //   child: Text(
            //     "Text - ZeroFlutter Text - ZeroFlutter Text - ZeroFlutter",
            //     style: TextStyle(
            //       // 颜色蓝色
            //       color: Colors.black,
            //       // 字号 24
            //       fontSize: 24,
            //     ),
            //     // 设置不换行
            //     softWrap: false,
            //     // 设置溢出样式
            //     // overflow: TextOverflow.ellipsis,
            //     // overflow: TextOverflow.fade,
            //     // overflow: TextOverflow.clip,
            //     // overflow: TextOverflow.visible,
            //   ),
            // ),
            // 设置换行与溢出显示样式
            Container(
              color: Colors.blue,
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Text - ZeroFlutter Text - ZeroFlutter Text - ZeroFlutter",
                style: TextStyle(
                  // 颜色蓝色
                  color: Colors.black,
                  // 字号 24
                  fontSize: 24,
                ),
                // 设置不换行
                softWrap: false,
                // 设置溢出样式
                // overflow: TextOverflow.ellipsis,
                // overflow: TextOverflow.fade,
                // overflow: TextOverflow.clip,
                // overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
