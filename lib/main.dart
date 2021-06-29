import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.grey,
        BlendMode.saturation,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Widgets'),
      ),
    );
  }
}
