import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? backgroundColor;

  @override
  final Size preferredSize;

  const MyAppBar({
    super.key,
    required this.title,
    this.backgroundColor,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
  });

  @override
  Widget build(BuildContext context) {
    // get the height of the status bar
    double statusBarHeight = MediaQuery.of(context).padding.top;

    return AppBar(
      toolbarHeight: preferredSize.height + statusBarHeight,
      title: Text(title),
      centerTitle: true,
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.inversePrimary,
    );
  }
}
