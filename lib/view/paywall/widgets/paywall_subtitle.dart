import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PaywallSubtitle extends StatelessWidget {
  const PaywallSubtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context).paywallSubtitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
