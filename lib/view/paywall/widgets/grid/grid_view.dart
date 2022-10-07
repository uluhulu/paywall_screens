import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywall_screens/view/paywall/widgets/grid/grid_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaywallGridView extends StatelessWidget {
  const PaywallGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 75.w,
          height: 9.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GridItem(
                text: AppLocalizations.of(context).fitness,
                icon: SvgPicture.asset(
                  "assets/svg_images/barbell_icon.svg",
                  width: 20.w,
                  height: 5.9.h,
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              GridItem(
                text: AppLocalizations.of(context).visualization,
                icon: SvgPicture.asset(
                  "assets/svg_images/eye_icon.svg",
                  width: 25.w,
                  height: 5.7.h,
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              GridItem(
                text: AppLocalizations.of(context).meditations,
                icon: SvgPicture.asset(
                  "assets/svg_images/meditation_icon.svg",
                  width: 17.w,
                  height: 6.h,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        SizedBox(
          width: 75.w,
          height: 12.7.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GridItem(
                text: AppLocalizations.of(context).reading,
                icon: SvgPicture.asset(
                  "assets/svg_images/book_icon.svg",
                  width: 17.7.w,
                  height: 9.5.h,
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              GridItem(
                text: AppLocalizations.of(context).notes,
                icon: SvgPicture.asset(
                  "assets/svg_images/notes_icon.svg",
                  width: 21.w,
                  height: 7.6.h,
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              GridItem(
                text: AppLocalizations.of(context).affirmations,
                icon: SvgPicture.asset(
                  "assets/svg_images/affirmations_icon.svg",
                  width: 17.w,
                  height: 9.9.h,
                ),
              ),
            ],
          ),
        )
      ],
    );

    //   MediaQuery.removePadding(
    //   context: context,
    //   removeTop: true,
    //   child: GridView.count(
    //     crossAxisCount: 3,
    //     physics: const NeverScrollableScrollPhysics(),
    //     shrinkWrap: true,
    //     childAspectRatio: 0.9,
    //     children: [
    //       GridItem(
    //         text: AppLocalizations.of(context).fitness,
    //         icon: SvgPicture.asset(
    //            "assets/svg_images/barbell_icon.svg",
    //           width: 20.w,
    //           height: 5.9.h,
    //         ),
    //       ),
    //       GridItem(
    //         text: AppLocalizations.of(context).visualization,
    //         icon: SvgPicture.asset(
    //           "assets/svg_images/eye_icon.svg",
    //           width: 25.w,
    //           height: 5.7.h,
    //         ),
    //       ),
    //       GridItem(
    //         text: AppLocalizations.of(context).meditations,
    //         icon: SvgPicture.asset(
    //           "assets/svg_images/meditation_icon.svg",
    //           width: 17.w,
    //           height: 6.h,
    //         ),
    //       ),
    //       GridItem(
    //         text: AppLocalizations.of(context).reading,
    //         icon: SvgPicture.asset(
    //           "assets/svg_images/book_icon.svg",
    //           width: 17.7.w,
    //           height: 9.5.h,
    //         ),
    //       ),
    //       GridItem(
    //         text: AppLocalizations.of(context).notes,
    //         icon: SvgPicture.asset(
    //           "assets/svg_images/notes_icon.svg",
    //           width: 21.w,
    //           height: 7.6.h,
    //         ),
    //       ),
    //       GridItem(
    //         text: AppLocalizations.of(context).affirmations,
    //         icon: SvgPicture.asset(
    //           "assets/svg_images/affirmations_icon.svg",
    //           width: 17.w,
    //           height: 10.h,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
