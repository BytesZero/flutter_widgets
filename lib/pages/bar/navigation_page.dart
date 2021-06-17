import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/list_data.dart';

/// BottomNavigationBar 页面
class BottomNavigationBarPage extends StatefulWidget {
  BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  // 当前子项索引
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView - ZeroFlutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BottomNavigationBar(
              currentIndex: currentIndex,
              selectedItemColor: Colors.purple[800],
              items: [
                BottomNavigationBarItem(
                  // 默认图标
                  icon: getItemIcon('assets/icons/icon_home_unselect.png'),
                  // 选中图标
                  activeIcon: getItemIcon('assets/icons/icon_home.png'),
                  label: '首页',
                ),
                BottomNavigationBarItem(
                  icon: getItemIcon('assets/icons/icon_msg_unselect.png'),
                  activeIcon: getItemIcon('assets/icons/icon_msg.png'),
                  label: '消息',
                ),
                BottomNavigationBarItem(
                  icon: getItemIcon('assets/icons/icon_me_unselect.png'),
                  activeIcon: getItemIcon('assets/icons/icon_me.png'),
                  label: '我的',
                ),
              ],
              onTap: onTabChanged,
            ),
            SizedBox(height: 10),
            BottomNavigationBar(
              // 当前页面索引
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.lightGreen,
              selectedIconTheme: IconThemeData(
                color: Colors.red,
                size: 32,
                opacity: 1.0,
              ),
              unselectedIconTheme: IconThemeData(
                color: Colors.blue,
                size: 24,
                opacity: 0.5,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '首页',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message_rounded),
                  label: '消息',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: '我的',
                ),
              ],
              onTap: onTabChanged,
            ),
            SizedBox(height: 10),
            BottomNavigationBar(
              currentIndex: currentIndex,
              // 设置文字大小
              selectedFontSize: 14,
              unselectedFontSize: 14,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '首页',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message_rounded),
                  label: '消息',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: '我的',
                ),
              ],
              onTap: onTabChanged,
            ),
            SizedBox(height: 10),
            BottomNavigationBar(
              currentIndex: currentIndex,
              // 显示选中的文字
              showSelectedLabels: true,
              // 显示不选中时的问题
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '首页',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message_rounded),
                  label: '消息',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: '我的',
                ),
              ],
              onTap: onTabChanged,
            ),
            SizedBox(height: 10),
            BottomNavigationBar(
              currentIndex: currentIndex,
              // 显示选中的文字
              type: BottomNavigationBarType.shifting,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '首页',
                  // 设置背景色
                  backgroundColor: Colors.blue,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message_rounded),
                  label: '消息',
                  // 设置背景色
                  backgroundColor: Colors.red,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: '我的',
                  // 设置背景色
                  backgroundColor: Colors.orange,
                ),
              ],
              onTap: onTabChanged,
            ),
            SizedBox(height: 10),
            // 去掉长按效果
            Theme(
              data: ThemeData(
                // 去掉水波纹效果
                splashColor: Colors.transparent,
                // 去掉长按效果
                // highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                // 当前页面索引
                currentIndex: currentIndex,
                selectedFontSize: 14,
                unselectedFontSize: 14,
                // 导航子项集
                items: [
                  // 导航子项
                  BottomNavigationBarItem(
                    // 图标
                    icon: Icon(Icons.home),
                    // 文字内容
                    label: '首页',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.message_rounded),
                    label: '消息',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.people),
                    label: '我的',
                  ),
                ],
                onTap: onTabChanged,
              ),
            ),
            SizedBox(height: 10),
            BottomNavigationBar(
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '首页',
                  // 设置提示为空
                  tooltip: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message_rounded),
                  label: '消息',
                  tooltip: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: '我的',
                  tooltip: '',
                ),
              ],
              onTap: onTabChanged,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        // 当前页面索引
        currentIndex: currentIndex,
        // 导航子项集
        items: [
          // 导航子项
          BottomNavigationBarItem(
            // 图标
            icon: Icon(Icons.home),
            // 文字内容
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: '消息',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '我的',
          ),
        ],
        onTap: onTabChanged,
      ),
    );
  }

  // 获取子项 Widget
  Widget getItem(index) {
    // 项目中准备好的数据
    var item = listData[index];
    // 返回子项 Widget
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 背景图
          Image.network(item.url),
          // 标题
          Positioned(
            top: 20,
            child: Text(item.title),
          ),
          // 描述
          Positioned(
            bottom: 40,
            child: Text(item.desc),
          ),
        ],
      ),
    );
  }

  /// Tab 改变
  void onTabChanged(int value) {
    currentIndex = value;
    setState(() {});
  }

  /// 获取项目 icon
  Widget getItemIcon(String icon) {
    return Image.asset(
      icon,
      width: 24,
      height: 24,
    );
  }
}
