import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomTextButton extends StatelessWidget {
  final String textString;

  const BottomTextButton({
    Key? key,
    required this.textString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        child: Text(
          textString,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        onPressed: () {});
  }
}
