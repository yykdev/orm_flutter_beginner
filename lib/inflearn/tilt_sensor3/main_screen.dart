import 'package:flutter/material.dart';

class SensorApp extends StatefulWidget {
  const SensorApp({super.key});

  @override
  State<SensorApp> createState() => _SensorAppState();
}

class _SensorAppState extends State<SensorApp> {
  @override
  Widget build(BuildContext context) {
    final centerX = MediaQuery.of(context).size.width / 2 - 50;
    final centerY = MediaQuery.of(context).size.height / 2 - 50;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: centerX,
            top: centerY,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
