import 'package:flutter/material.dart';

import '../core/util/helper_functions.dart';
import '../widgets/button_widget.dart';
import 'opacity_page.dart';
import 'clip_rect_page.dart';
import 'clip_rrect_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('GFG'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              MyButton(
                label: 'Opacity Widget',
                onPressed: () => HelperFunctions.navigateTo(
                  context,
                  const OpacityPage(),
                ),
              ),
              MyButton(
                label: 'ClipRect Widget',
                onPressed: () => HelperFunctions.navigateTo(
                  context,
                  const ClipRectPage(),
                ),
              ),
              MyButton(
                label: 'ClipRRect Widget',
                onPressed: () => HelperFunctions.navigateTo(
                  context,
                  const ClipRRectPage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
