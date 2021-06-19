import 'package:flutter/material.dart';

// AppBar 页面
class AppBarPage extends StatefulWidget {
  AppBarPage({Key? key}) : super(key: key);

  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar - ZeroFlutter'),
        bottom: PreferredSize(
          preferredSize: Size(375, 120),
          child: SizedBox(
            width: 375,
            height: 120,
            child: Image.network(
              'https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 默认风格
            AppBar(),
            SizedBox(height: 10),
            Theme(
              data: ThemeData(
                // Android 风格
                platform: TargetPlatform.android,
              ),
              child: AppBar(),
            ),
            SizedBox(height: 10),
            // 自定义
            AppBar(
              leading: Icon(Icons.home),
            ),
            SizedBox(height: 10),
            AppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                color: Colors.grey,
                opacity: 0.5,
              ),
            ),
            SizedBox(height: 10),
            AppBar(
              leadingWidth: 100,
            ),
            SizedBox(height: 10),
            // 默认风格
            AppBar(
              title: Text('ZeroFlutter'),
            ),
            SizedBox(height: 10),
            Theme(
              data: ThemeData(
                // Android 风格
                platform: TargetPlatform.android,
              ),
              child: AppBar(
                title: Text(
                  'ZeroFlutter',
                ),
                // 标题居中
                // centerTitle: true,
                // 标题左右间距为 0
                // titleSpacing: 40,
                // automaticallyImplyLeading: false,
                // actions: [
                //   IconButton(
                //     onPressed: () {},
                //     icon: Icon(Icons.add),
                //   ),
                //   IconButton(
                //     onPressed: () {},
                //     icon: Icon(Icons.delete),
                //   ),
                //   IconButton(
                //     onPressed: () {},
                //     icon: Icon(Icons.update),
                //   ),
                // ],
              ),
            ),
            SizedBox(height: 10),
            AppBar(
              // 自定义双标题
              title: Column(
                children: [
                  Text(
                    'ZeroFlutter',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  Text(
                    'ZeroFlutter',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.white,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            AppBar(
              title: FlutterLogo(),
            ),
            SizedBox(height: 10),
            AppBar(
              title: Text('ZeroFlutter'),
              // 添加 action
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.update),
                ),
              ],
              // 自定义图标样式
              actionsIconTheme: IconThemeData(
                color: Colors.red,
              ),
            ),
            SizedBox(height: 10),
            AppBar(
              title: Text('ZeroFlutter'),
              flexibleSpace: SizedBox(
                height: 160,
                width: double.infinity,
                child: Image.network(
                  'https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
