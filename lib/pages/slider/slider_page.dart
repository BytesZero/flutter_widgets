import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 滑动条页面
class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> with TickerProviderStateMixin {
  double progress = 0.5;
  double progress2 = 40;
  RangeValues _rangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider - ZeroFlutter'),
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
            Slider(
              value: progress,
              onChanged: (value) {
                print('onChanged:$value');
                setState(() {
                  progress = value;
                });
              },
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            SliderTheme(
              data: SliderThemeData(
                showValueIndicator: ShowValueIndicator.always,
              ),
              child: Slider(
                value: progress2,
                min: 0,
                max: 100,
                label: '$progress2',
                onChanged: (value) {
                  print('onChanged:$value');
                  setState(() {
                    progress2 = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 30,
              width: 30,
            ),
            Slider(
              value: progress2,
              min: 0,
              max: 100,
              divisions: 8,
              label: '$progress2',
              onChanged: (value) {
                print('onChanged:$value');
                setState(() {
                  progress2 = value;
                });
              },
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Slider(
              value: progress2,
              min: 0,
              max: 100,
              activeColor: Colors.red,
              inactiveColor: Colors.green,
              label: '$progress2',
              onChanged: (value) {
                print('onChanged:$value');
                setState(() {
                  progress2 = value;
                });
              },
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            RangeSlider(
              values: _rangeValues,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _rangeValues = value;
                });
              },
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            RangeSlider(
              values: _rangeValues,
              max: 100,
              divisions: 10,
              labels: RangeLabels(
                  '开始：${_rangeValues.start}', '结束：${_rangeValues.end}'),
              onChanged: (value) {
                setState(() {
                  _rangeValues = value;
                });
              },
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            RangeSlider(
              values: _rangeValues,
              max: 100,
              activeColor: Colors.orange,
              inactiveColor: Colors.grey,
              onChanged: (value) {
                setState(() {
                  _rangeValues = value;
                });
              },
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            CupertinoSlider(
              value: progress2,
              max: 100,
              onChanged: (value) {
                setState(() {
                  progress2 = value;
                });
              },
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: CupertinoSlider(
                value: progress2,
                max: 100,
                divisions: 5,
                activeColor: Colors.purple,
                thumbColor: Colors.cyan,
                onChanged: (value) {
                  setState(() {
                    progress2 = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
