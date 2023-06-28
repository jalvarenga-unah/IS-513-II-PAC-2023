import 'package:flutter/material.dart';

class BotonesFlotantes extends StatelessWidget {
  const BotonesFlotantes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.purple[600],
          onPressed: null,
          child: const Icon(Icons.plus_one),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          backgroundColor: Colors.purple[600],
          onPressed: null,
          child: const Icon(Icons.exposure_minus_1),
        ),
      ],
    );
  }
}
