import 'package:flutter/material.dart';
import 'package:flutter_gfg_tutorials/src/core/constants/asset_constants.dart';
import 'package:flutter_gfg_tutorials/src/widgets/appbar_widget.dart';

import '../widgets/icon_button_widget.dart';

class RotatedBoxPage extends StatefulWidget {
  const RotatedBoxPage({super.key});

  @override
  State<RotatedBoxPage> createState() => _RotatedBoxPageState();
}

class _RotatedBoxPageState extends State<RotatedBoxPage> {
  int _quarterTurns = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Rotated Widget',
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RotatedBox(
              quarterTurns: _quarterTurns,
              child: Image.network(kImgUrlComputerSquare),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyIconButton(
                tooltip: 'Rotate Left',
                icon: Icons.rotate_left,
                onPressed: _rotateLeft,
              ),
              MyIconButton(
                tooltip: 'Reset',
                icon: Icons.refresh,
                onPressed: _reset,
              ),
              MyIconButton(
                tooltip: 'Rotate Right',
                icon: Icons.rotate_right,
                onPressed: _rotateRight,
              ),
            ],
          )
        ],
      ),
    );
  }

  void _rotateLeft() {
    setState(() {
      _quarterTurns = (_quarterTurns - 1) % 4;
    });
  }

  void _reset() {
    setState(() {
      _quarterTurns = 0;
    });
  }

  void _rotateRight() {
    setState(() {
      _quarterTurns = (_quarterTurns + 1) % 4;
    });
  }
}
