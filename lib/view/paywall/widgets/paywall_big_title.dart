import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaywallBigTitle extends StatelessWidget {
  const PaywallBigTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      child: Text(
        AppLocalizations.of(context).paywallHeadline.toUpperCase(),
        style: Theme.of(context).textTheme.headlineLarge,
        textAlign: TextAlign.center,
        maxLines: 2,
      ),
    );
  }
}
