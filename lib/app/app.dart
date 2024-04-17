
import 'package:flutter/material.dart';
import 'package:second_app_32a/screen/simple_interest.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // themes
      home: SimpleInterestScreen(),
    );
  }
}