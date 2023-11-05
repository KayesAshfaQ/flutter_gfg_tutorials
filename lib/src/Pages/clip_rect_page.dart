import 'package:flutter/material.dart';

import '../core/constants/asset_constants.dart';
import '../widgets/appbar_widget.dart';

class ClipRectPage extends StatefulWidget {
  const ClipRectPage({super.key});

  @override
  State<ClipRectPage> createState() => _ClipRectPageState();
}

class _ClipRectPageState extends State<ClipRectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'ClipRect'),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: ClipRect(
          child: Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.5,
            child: Image.network(kImgUrlComputerSquare),
          ),
        ),
      ),
    );
  }
}
