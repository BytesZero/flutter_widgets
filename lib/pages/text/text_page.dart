import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 文字页面
class TextPage extends StatefulWidget {
  TextPage({Key? key}) : super(key: key);

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  // 点击手势检测器
  late TapGestureRecognizer tapRecognizer;
  @override
  void initState() {
    tapRecognizer = TapGestureRecognizer()..onTap = _handleTap;
    super.initState();
  }

  /// 处理点击
  void _handleTap() {
    print('tapRecognizer 25');
    HapticFeedback.vibrate();
  }

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
            Container(
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text("Text - ZeroFlutter"),
            ),
            // 文字样式
            Container(
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Text - ZeroFlutter",
                style: TextStyle(
                  // 颜色蓝色
                  color: Colors.blue,
                  // 字号 24
                  fontSize: 24,
                  // 字重 粗
                  fontWeight: FontWeight.bold,
                  // 背景 橘色
                  // backgroundColor: Colors.orange,
                  // 高度
                  // height: 3,
                  // 每个文字之间的间距
                  // letterSpacing: 4,
                  // 每个单词之间的间距
                  // wordSpacing: 10,
                  // 文字样式
                  // fontStyle: FontStyle.normal,
                  // fontStyle: FontStyle.italic,
                  // 文字装饰
                  // decoration: TextDecoration.none,
                  decoration: TextDecoration.underline,
                  // decoration: TextDecoration.overline,
                  // decoration: TextDecoration.lineThrough,
                  // decorationStyle: TextDecorationStyle.solid,
                  // decorationStyle: TextDecorationStyle.double,
                  // decorationStyle: TextDecorationStyle.wavy,
                  // decorationStyle: TextDecorationStyle.dotted,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationColor: Colors.red,
                ),
              ),
            ),
            // 设置字体文字
            Container(
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Text - ZeroFlutter",
                style: TextStyle(
                  // 颜色蓝色
                  color: Colors.blue,
                  // 字号 24
                  fontSize: 24,
                  // 设置字体
                  fontFamily: 'Caveat',
                  // 设置字重
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            // 设置对齐方式
            Container(
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Text - ZeroFlutter Text - ZeroFlutter  Text - ZeroFlutter  Text - ZeroFlutter  ",
                // textAlign: TextAlign.center,
                // textAlign: TextAlign.start,
                // textAlign: TextAlign.end,
                textAlign: TextAlign.left,
                // textAlign: TextAlign.right,
                // textAlign: TextAlign.justify,
                textDirection: TextDirection.ltr,
                // textDirection: TextDirection.rtl,
              ),
            ),

            // 设置换行与溢出显示样式
            Container(
              color: Colors.blue,
              height: 120,
              width: 300,
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
            // 设置换行与溢出显示样式
            Container(
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              child: Row(
                children: [
                  FlutterLogo(size: 48),
                  Expanded(
                    child: Text(
                      "Text - ZeroFlutter Text - ZeroFlutter Text - ZeroFlutter",
                      style: TextStyle(
                        // 颜色蓝色
                        color: Colors.black,
                        // 字号 24
                        fontSize: 24,
                      ),
                      // 设置溢出样式
                      overflow: TextOverflow.ellipsis,
                      // 设置超过 2 行才溢出
                      maxLines: 2,
                    ),
                  )
                ],
              ),
            ),
            // 富文本
            Container(
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(child: FlutterLogo()),
                    TextSpan(text: 'Flutter Widgets 已有 '),
                    TextSpan(
                      text: '25',
                      // 设置个性化覆盖样式
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.red,
                      ),
                      recognizer: tapRecognizer,
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.link,
                        size: 16,
                        color: Colors.blue,
                      ),
                    ),
                    // 复用上层通用样式
                    TextSpan(text: ' 系列文章'),
                    WidgetSpan(
                      child: Icon(
                        Icons.copy,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                  // 设置通用样式
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            // 富文本
            Container(
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(child: FlutterLogo()),
                    TextSpan(text: 'Flutter Widgets 已有 '),
                    TextSpan(
                      text: '25',
                      // 设置个性化覆盖样式
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.red,
                      ),
                      recognizer: tapRecognizer,
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.link,
                        size: 16,
                        color: Colors.blue,
                      ),
                    ),
                    // 复用上层通用样式
                    TextSpan(text: ' 系列文章'),
                    WidgetSpan(
                      child: Icon(
                        Icons.copy,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                  // 设置通用样式
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            // 选择文本
            Container(
              height: 120,
              width: 230,
              alignment: Alignment.center,
              child: SelectableText(
                "Text - ZeroFlutterText - ZeroFlutterText - ZeroFlutterText - ZeroFlutterText - ZeroFlutter",
                maxLines: 1,
                style: TextStyle(
                  // 颜色蓝色
                  color: Colors.blue,
                  // 字号 24
                  fontSize: 24,
                ),
              ),
            ),
            // 选择富文本
            Container(
              height: 120,
              width: 230,
              alignment: Alignment.center,
              child: SelectableText.rich(
                TextSpan(
                  children: [
                    // WidgetSpan(child: FlutterLogo()),
                    TextSpan(text: 'Flutter Widgets 已有 '),
                    TextSpan(
                      text: '25',
                      // 设置个性化覆盖样式
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.red,
                      ),
                      recognizer: tapRecognizer,
                    ),
                    // WidgetSpan(
                    //   child: Icon(
                    //     Icons.link,
                    //     size: 16,
                    //     color: Colors.blue,
                    //   ),
                    // ),
                    // 复用上层通用样式
                    TextSpan(text: ' 系列文章'),
                    // WidgetSpan(
                    //   child: Icon(
                    //     Icons.copy,
                    //     size: 16,
                    //     color: Colors.grey,
                    //   ),
                    // ),
                  ],
                  // 设置通用样式
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
