import 'package:flutter/material.dart';
import 'package:paywall_screens/view/paywall/widgets/bottom_text_button.dart';
import 'package:paywall_screens/view/paywall/widgets/custom_button.dart';
import 'package:paywall_screens/view/paywall/widgets/grid/grid_view.dart';
import 'package:paywall_screens/view/paywall/widgets/payment_info_box.dart';
import 'package:paywall_screens/view/paywall/widgets/paywall_big_title.dart';
import 'package:paywall_screens/view/paywall/widgets/paywall_subtitle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PayWallBody extends StatelessWidget {

  const PayWallBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 2.4.h,
        ),
        PaywallBigTitle(),
        SizedBox(
          height: 0.6.h,
        ),
        const PaywallSubtitle(),
        SizedBox(
          height: 3.h,
        ),
        const Center(
          child: PaywallGridView(),
        ),
        SizedBox(
          height: 5.h,
        ),
        const PaymentInfoBox(),
        SizedBox(
          height: 11.h,
        ),
        const CustomButton(),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BottomTextButton(
              textString: AppLocalizations.of(context).privacyPolicy,
            ),
            SizedBox(
              width: 16.6.w,
            ),
            BottomTextButton(
              textString: AppLocalizations.of(context).termOfUse,
            ),
          ],
        ),
      ],
    );
  }
}
