import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

// 过滤页面
class FilterPage extends StatefulWidget {
  FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  ColorFilter invert = ColorFilter.matrix(<double>[
    -1,
    0,
    0,
    0,
    255,
    0,
    -1,
    0,
    0,
    255,
    0,
    0,
    -1,
    0,
    255,
    0,
    0,
    0,
    1,
    0,
  ]);

  ColorFilter greyscale = ColorFilter.matrix(<double>[
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ]);
  @override
  Widget build(BuildContext context) {
    const ColorFilter identity = ColorFilter.matrix(<double>[
      1,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
    ]);

    const ColorFilter sepia = ColorFilter.matrix(<double>[
      0.393,
      0.769,
      0.189,
      0,
      0,
      0.349,
      0.686,
      0.168,
      0,
      0,
      0.272,
      0.534,
      0.131,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter - ZeroFlutter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 30,
            //   width: 30,
            // ),
            // ImageDescWidget(),
            SizedBox(
              height: 30,
              width: 30,
            ),
            ColorFiltered(
              // colorFilter: ColorFilter.linearToSrgbGamma(),
              // colorFilter: ColorFilter.srgbToLinearGamma(),
              // colorFilter: ColorFilter.mode(
              //   Colors.pink,
              //   BlendMode.color,
              // ),
              // colorFilter: invert,
              // colorFilter: greyscale,
              // colorFilter: identity,
              colorFilter: sepia,
              child: ImageDescWidget(),
            ),
            // SizedBox(
            //   height: 30,
            //   width: 30,
            // ),
            // ImageFiltered(
            //   imageFilter: ImageFilter.blur(
            //     sigmaX: 4,
            //     sigmaY: 4,
            //     // tileMode: TileMode.clamp,
            //     // tileMode: TileMode.decal,
            //     // tileMode: TileMode.mirror,
            //     // tileMode: TileMode.repeated,
            //   ),
            //   child: Image.asset(
            //     'assets/images/img_03.jpeg',
            //   ),
            // ),
            SizedBox(
              height: 30,
              width: 30,
            ),
            // BackdropFilter(
            // filter: ImageFilter.matrix(Matrix4.rotationZ(3.14).storage),
            // filter: ImageFilter.compose(
            //   outer: ImageFilter.blur(
            //     sigmaX: 10,
            //     sigmaY: 10,
            //   ),
            //   inner: ImageFilter.matrix(Matrix4.skewX(0.6).storage),
            // ),
            // filter: ImageFilter.blur(
            //   sigmaX: 10,
            //   sigmaY: 10,
            // ),
            //   filter: ColorFilter.mode(Colors.blue, BlendMode.saturation),
            //   child: Image.asset(
            //     'assets/images/img_03.jpeg',
            //     width: 375,
            //     height: 375,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class ImageDescWidget extends StatelessWidget {
  const ImageDescWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          ImageWidget(),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              '🌸 樱花 🌸',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/img_03.jpeg',
      width: 375,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
