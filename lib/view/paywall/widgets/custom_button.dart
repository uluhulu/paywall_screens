import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82.w,
      decoration: BoxDecoration(
        color: const Color(0xff6B0496),
        border: Border.all(
          color: const Color(0xff8A39AC),
          width: 4,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(19),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 5.w,
        ),
        child: Center(
          child: Text(
            AppLocalizations.of(context).paywallButton,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
