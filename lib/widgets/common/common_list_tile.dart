import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/app_route.dart';

/// 通用列表项
class CListTile extends StatelessWidget {
  const CListTile({
    Key? key,
    required this.leading,
    required this.title,
    this.onTap,
    this.pushPage,
  })  : assert(onTap != null || pushPage != null),
        super(key: key);

  final String leading;
  final String title;
  final VoidCallback? onTap;
  final Widget? pushPage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('#1'),
      title: Text('AnimatedContainer'),
      trailing: Icon(Icons.keyboard_arrow_right_outlined),
      onTap: () {
        if (onTap != null) {
          onTap!.call();
        } else {
          push(context, pushPage!);
        }
      },
    );
  }
}
