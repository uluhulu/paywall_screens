import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GridItem extends StatelessWidget {
  final Widget icon;
  final String text;

  const GridItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        icon,
        SizedBox(
          height: 0.5.h,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
