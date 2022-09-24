import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

Widget ProgressBar() {
  return ProgressBarAnimation(
    width: 300,
    duration: const Duration(seconds: 3),
    gradient: const LinearGradient(
      colors: [
        Colors.orange,
        Colors.orangeAccent,
      ],
    ),
    backgroundColor: Colors.grey.withOpacity(0.4),
  );
}
