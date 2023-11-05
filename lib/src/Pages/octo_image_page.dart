import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

import '../core/constants/asset_constants.dart';
import '../widgets/appbar_widget.dart';

class OctoImagePage extends StatefulWidget {
  const OctoImagePage({super.key});

  @override
  _OctoImagePageState createState() => _OctoImagePageState();
}

class _OctoImagePageState extends State<OctoImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Octo Image',
      ),
      body: Center(
        child: OctoImage(
          image: const NetworkImage(
            kImgUrlNatureLandScape,
          ),
          progressIndicatorBuilder: (context, progress) {
            double value = 0.0;
            if (progress != null && progress.expectedTotalBytes != null) {
              var totalBytes = progress.expectedTotalBytes!;
              var receivedBytes = progress.cumulativeBytesLoaded;

              value = receivedBytes / totalBytes;
            }
            return CircularProgressIndicator(value: value);
          },
          // placeholderBuilder: (context) => const CircularProgressIndicator(),

          errorBuilder: (context, error, stackTrace) {
            // log error to console
            debugPrint('Error occurred: $error');

            // log stacktrace to console
            debugPrint('Stacktrace: $stackTrace');

            return const Icon(
              Icons.warning_rounded,
              color: Colors.red,
              size: 48,
            );
          },
          // errorBuilder: OctoError.icon(
          //   color: Colors.red,
          // ),
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
