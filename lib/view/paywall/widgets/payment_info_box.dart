import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentInfoBox extends StatelessWidget {
  const PaymentInfoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(19),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 1.9.h,
        ),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: AppLocalizations.of(context).price,
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  TextSpan(
                    text: "/",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: const Color(0xff6B0496),
                        ),
                  ),
                  TextSpan(
                    text: AppLocalizations.of(context).month,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: const Color(0xff6B0496),
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.3.h,
            ),
            Text(
              AppLocalizations.of(context).priceInfo,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 1.1.h,
            ),
            Align(
              child: Container(
                alignment: Alignment.topLeft,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(19)),
                  color:  Color(0xffF8F8F8),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 1.2.h,
                    horizontal: 4.3.w,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/png_images/secured_icon.png",
                        width: 12.8.w,
                      ),
                      SizedBox(
                        width: 1.2.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context).securedWith,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              AppLocalizations.of(context).cancelAnytime,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff664EFF),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
