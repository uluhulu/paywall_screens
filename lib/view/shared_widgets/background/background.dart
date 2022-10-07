import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        foregroundDecoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/png_images/background.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        );
  }
}
