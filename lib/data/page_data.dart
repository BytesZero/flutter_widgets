import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/bar/app_bar_page.dart';
import 'package:flutter_widgets/pages/bar/float_page.dart';
import 'package:flutter_widgets/pages/bar/navigation_page.dart';
import 'package:flutter_widgets/pages/box/box_page.dart';
import 'package:flutter_widgets/pages/image/image_details_page.dart';
import 'package:flutter_widgets/pages/image/image_load_page.dart';
import 'package:flutter_widgets/pages/list/flex/column_row_page.dart';
import 'package:flutter_widgets/pages/list/flex/flexible_expaned_spacer_page.dart';
import 'package:flutter_widgets/pages/list/gridview/grid_view_page.dart';
import 'package:flutter_widgets/pages/list/page/page_view_page.dart';
import 'package:flutter_widgets/pages/list/page/page_view_page2.dart';
import 'package:flutter_widgets/pages/list/stack/indexed_stack_page.dart';
import 'package:flutter_widgets/pages/list/stack/positioned_align_center_page.dart';
import 'package:flutter_widgets/pages/list/stack/stack_page.dart';
import 'package:flutter_widgets/pages/list/wrap/wrap_page.dart';
import 'package:flutter_widgets/pages/text/text_page.dart';
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
  PageEntity(
    title: 'Colum、Row、Flex',
    page: ColumnRowPage(),
  ),
  PageEntity(
    title: 'Flexible、Expanded、Spacer',
    page: FlexibleExpandedSpacerPage(),
  ),
  PageEntity(
    title: 'Stack',
    page: StackPage(),
  ),
  PageEntity(
    title: 'Positioned、Align、Center',
    page: Stack2Page(),
  ),
  PageEntity(
    title: 'IndexedStack',
    page: IndexedStackPage(),
  ),
  PageEntity(
    title: 'PageView',
    page: PageViewPage(),
  ),
  PageEntity(
    title: 'PageView2',
    page: PageViewPage2(),
  ),
  PageEntity(
    title: 'BottomNavigationBar',
    page: BottomNavigationBarPage(),
  ),
  PageEntity(
    title: 'FloatActionBar',
    page: FloatActionBarPage(),
  ),
  PageEntity(
    title: 'AppBar',
    page: AppBarPage(),
  ),
  PageEntity(
    title: 'Image',
    page: ImageLoadPage(),
  ),
  PageEntity(
    title: 'ImageDetails',
    page: ImageDetilsPage(),
  ),
  PageEntity(
    title: 'Text',
    page: TextPage(),
  ),
  PageEntity(
    title: 'Box',
    page: BoxPage(),
  ),
];
