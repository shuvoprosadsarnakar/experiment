import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/castle.jpg',
                  height: 120,
                ),
                Text(
                  "app asset",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/lotus.jpg',
                  package: 'widget_ui',
                  height: 120,
                ), // Package asset
                Text(
                  "Package asset",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
