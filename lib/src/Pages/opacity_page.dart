import 'package:flutter/material.dart';

import '../core/constants/asset_constants.dart';
import '../widgets/appbar_widget.dart';

class OpacityPage extends StatefulWidget {
  const OpacityPage({super.key});

  @override
  _OpacityPageState createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Opacity Widget',
      ),
      body: Center(
        child: Image.network(
          kImgUrlNatureLandScape,
          color: const Color.fromRGBO(255, 255, 255, 0.5),
          colorBlendMode: BlendMode.modulate,
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
