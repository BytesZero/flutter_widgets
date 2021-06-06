import 'package:flutter/material.dart';
import '../widgets/01_animated_container.dart';
import '../widgets/02_animated.dart';
import '../widgets/03_clip.dart';

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
];
