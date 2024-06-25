import 'package:amim/animated_logo.dart';
import 'package:flutter/material.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnimatedLogo(),
    );
  }
}
