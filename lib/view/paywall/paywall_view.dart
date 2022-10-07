import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:paywall_screens/view/paywall/widgets/paywall_body.dart';
import 'package:paywall_screens/view/shared_widgets/background/background.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:paywall_screens/view/shared_widgets/background/blur.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaywallView extends StatefulWidget {
  const PaywallView({Key? key}) : super(key: key);

  @override
  State<PaywallView> createState() => _PaywallViewState();
}

class _PaywallViewState extends State<PaywallView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding:  EdgeInsets.only(left: 10.w),
          child: SvgPicture.asset(
            "assets/svg_images/cancel_icon.svg",
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Center(
              child: Text(
                AppLocalizations.of(context).restore,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children:  [
          const GradientBackground(),
          const  Blur(),
          Positioned(
            top: 11.h,
            child:  PayWallBody(),
          ),
        ],
      ),
    );
  }
}
