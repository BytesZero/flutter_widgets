import 'package:flutter/material.dart';

// 盒子页面
class BoxPage extends StatefulWidget {
  BoxPage({Key? key}) : super(key: key);

  @override
  _BoxPageState createState() => _BoxPageState();
}

class _BoxPageState extends State<BoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Box - ZeroFlutter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              width: 30,
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('点击'),
              ),
            ),

            Row(
              children: [
                Expanded(child: BoxWidget()),
                SizedBox(width: 20),
                Expanded(child: BoxWidget()),
              ],
            ),

            SizedBox(
              height: 200,
              child: Column(
                children: [
                  Expanded(child: BoxWidget()),
                  SizedBox(height: 20),
                  Expanded(child: BoxWidget()),
                ],
              ),
            ),

            SizedBox(
              height: 100,
              child: SizedBox.expand(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('点击'),
                ),
              ),
            ),
            SizedBox.shrink(
              child: SizedBox(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('点击'),
                ),
              ),
            ),

            SizedBox(
              height: 100,
              width: 100,
              child: BoxWidget(),
            ),
            SizedBox(height: 30),
            RotatedBox(
              quarterTurns: 2,
              child: BoxWidget(),
            ),
            FractionallySizedBox(
              widthFactor: 1,
              child: BoxWidget(text: '1'),
            ),
            SizedBox(height: 10),
            FractionallySizedBox(
              widthFactor: 0.7,
              child: BoxWidget(text: '0.7'),
            ),
            SizedBox(height: 10),
            FractionallySizedBox(
              widthFactor: 0.4,
              child: BoxWidget(text: '0.4'),
            ),

            LimitedBox(
              maxHeight: 100,
              child: FractionallySizedBox(
                heightFactor: 1,
                child: BoxWidget(text: '1'),
              ),
            ),
            SizedBox(height: 10),
            LimitedBox(
              maxHeight: 100,
              child: FractionallySizedBox(
                heightFactor: 0.7,
                child: BoxWidget(
                  text: '0.7',
                  height: 100,
                ),
              ),
            ),
            SizedBox(height: 10),
            LimitedBox(
              maxHeight: 100,
              child: FractionallySizedBox(
                heightFactor: 0.4,
                child: BoxWidget(
                  text: '0.4',
                ),
              ),
            ),
            SizedBox(height: 10),
            LimitedBox(
              maxHeight: 100,
              child: SizedBox(
                height: 200,
                child: BoxWidget(text: '0.4'),
              ),
            ),

            LimitedBox(
              maxWidth: 100,
              maxHeight: 100,
              child: FractionallySizedBox(
                heightFactor: 0.7,
                child: BoxWidget(
                  text: '0.7',
                  height: 100,
                ),
              ),
            ),
            SizedBox(height: 10),
            LimitedBox(
              maxWidth: 100,
              maxHeight: 100,
              child: FractionallySizedBox(
                heightFactor: 0.4,
                child: BoxWidget(
                  text: '0.4',
                ),
              ),
            ),
            SizedBox(height: 10),
            LimitedBox(
              maxWidth: 100,
              maxHeight: 100,
              child: SizedBox(
                height: 200,
                child: BoxWidget(text: '0.4'),
              ),
            ),

            AspectRatio(
              aspectRatio: 16 / 3,
              child: BoxWidget(
                text: '16 / 3',
              ),
            ),
            SizedBox(height: 10),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: BoxWidget(
                text: '16 / 9',
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: BoxWidget(text: '参考图 height: 40'),
            ),
            SizedBox(height: 10),
            // ConstrainedBox
            ConstrainedBox(
              // BoxConstraints 构造
              constraints: BoxConstraints(
                minHeight: 40,
                maxHeight: 100,
                minWidth: 40,
                maxWidth: 300,
              ),
              // BoxConstraints 展开
              // constraints: BoxConstraints.expand(width: 300, height: 100),
              // BoxConstraints 松的
              // constraints: BoxConstraints.loose(Size(300, 100)),
              // BoxConstraints 紧的
              // constraints: BoxConstraints.tight(Size(300, 100)),
              // BoxConstraints 紧的无限制
              // constraints: BoxConstraints.tightForFinite(height: 100),
              // constraints: BoxConstraints.tightForFinite(width: 300),
              child: BoxWidget(
                text: "ZeroFlutter 聊 ConstrainedBox",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    Key? key,
    this.text = '',
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);
  final String text;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width,
      // height: height,
      // width: 40,
      // height: 20,
      color: Colors.blue,
      // alignment: Alignment.center,
      child: Text(
        '$text',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
