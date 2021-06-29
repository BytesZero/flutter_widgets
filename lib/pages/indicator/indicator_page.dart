import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 指示器页面
class IndicatorPage extends StatefulWidget {
  IndicatorPage({Key? key}) : super(key: key);

  @override
  _IndicatorPageState createState() => _IndicatorPageState();
}

class _IndicatorPageState extends State<IndicatorPage>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indicator - ZeroFlutter'),
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
            LinearProgressIndicator(),
            SizedBox(
              height: 10,
              width: 10,
            ),
            LinearProgressIndicator(
              value: 0.5,
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            LinearProgressIndicator(
              value: controller.value,
              minHeight: 10,
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            LinearProgressIndicator(
              value: controller.value,
              backgroundColor: Colors.red,
              valueColor: controller.drive(
                ColorTween(
                  begin: Colors.greenAccent,
                  end: Colors.orange,
                ),
              ),
            ),
            SizedBox(
              height: 30,
              width: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularProgressIndicator(),
                CircularProgressIndicator(
                  value: controller.value,
                ),
                CircularProgressIndicator(
                  strokeWidth: 10,
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  valueColor: controller.drive(
                    ColorTween(
                      begin: Colors.amber,
                      end: Colors.green,
                    ),
                  ),
                ),
                CircularProgressIndicator(
                  value: controller.value,
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  valueColor: controller.drive(
                    ColorTween(
                      begin: Colors.blue,
                      end: Colors.pink,
                    ),
                  ),
                ),
                CircularProgressIndicator(
                  value: controller.value,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                ),
              ],
            ),
            SizedBox(
              height: 30,
              width: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularProgressIndicator.adaptive(),
                CupertinoActivityIndicator(),
                CupertinoActivityIndicator(
                  radius: 20,
                ),
                CupertinoActivityIndicator.partiallyRevealed(
                  radius: 20,
                  progress: controller.value,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
