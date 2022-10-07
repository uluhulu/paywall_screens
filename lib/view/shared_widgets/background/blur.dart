import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Blur extends StatelessWidget {
  const Blur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.06),
        ),
      ),
    );
  }
}
