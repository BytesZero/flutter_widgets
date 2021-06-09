import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/list/gridview/grid_view_page.dart';
import 'package:flutter_widgets/pages/list/wrap/wrap_page.dart';
import '../widgets/01_animated_container.dart';
import '../widgets/02_animated.dart';
import '../widgets/03_clip.dart';
import '../pages/list/listview/list_view_page.dart';

/// 页面实体
class PageEntity {
  PageEntity({
    required this.title,
    required this.page,
  });

  final String title;
  final Widget page;
}

/// 页面列表
List<PageEntity> pageList = [
  PageEntity(
    title: 'AnimatedContainer',
    page: AnimatedContainerPage(),
  ),
  PageEntity(
    title:
        'AnimatedPadding、AnimatedAlign、AnimatedPositioned、AnimatedOpacity、AnimatedCrossFade、AnimatedSize、AnimatedSwitcher',
    page: AnimatedPage(),
  ),
  PageEntity(
    title: 'ClipRRect、ClipRect、ClipOval、ClipPath、CustomClipper',
    page: ClipPage(),
  ),
  PageEntity(
    title: 'ListView',
    page: ListViewPage(),
  ),
  PageEntity(
    title: 'GridView',
    page: GridViewPage(),
  ),
  PageEntity(
    title: 'Wrap',
    page: WrapPage(),
  ),
];
