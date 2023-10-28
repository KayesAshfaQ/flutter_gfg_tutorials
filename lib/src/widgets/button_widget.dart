
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const ButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          Theme.of(context).colorScheme.onPrimary,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Theme.of(context).colorScheme.primary,
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          Theme.of(context).colorScheme.onPrimary.withOpacity(0.12),
        ),
        // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        //   const EdgeInsets.all(16.0),
        // ),
        // elevation: MaterialStateProperty.all<double>(0.0),
        // shadowColor: MaterialStateProperty.all<Color>(
        //   Colors.transparent,
        // ),
        // animationDuration: const Duration(milliseconds: 200),
        // enableFeedback: true,
        // tapTargetSize: MaterialTapTargetSize.padded,
        // alignment: Alignment.center,
        // minimumSize: MaterialStateProperty.all<Size>(
        //   const Size(88.0, 36.0),
        // ),
      ),
      child: Text(label),
    );
  }
}
