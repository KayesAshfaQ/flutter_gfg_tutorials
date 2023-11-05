import 'package:flutter/material.dart';
import 'package:flutter_gfg_tutorials/src/core/constants/asset_constants.dart';
import 'package:flutter_gfg_tutorials/src/widgets/appbar_widget.dart';

class ClipRRectPage extends StatefulWidget {
  const ClipRRectPage({super.key});

  @override
  State<ClipRRectPage> createState() => _ClipRRectPageState();
}

class _ClipRRectPageState extends State<ClipRRectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'ClipRRect Widget',
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(kImgUrlComputerSquare),
        ),
      ),
    );
  }
}
