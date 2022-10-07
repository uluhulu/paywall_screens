import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paywall_screens/view/paywall/paywall_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('de', ''),
        ],
        title: 'Paywall',
        theme: ThemeData(
          textTheme: TextTheme(
            labelSmall: GoogleFonts.montserrat(
              fontSize: 14.2.sp,
              color: Colors.black,
              letterSpacing: 0,
            ),
            headlineLarge: GoogleFonts.montserrat(
              fontSize: 20.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
            ),
            headlineMedium: GoogleFonts.montserrat(
              fontSize: 15.8.sp,
              color: Colors.white,
              letterSpacing: 0,
            ),
            bodyLarge: GoogleFonts.montserrat(
              fontSize: 22.sp,
              letterSpacing: 0,
              fontWeight: FontWeight.w700,
              color: const Color(0xff6B0496),
            ),
            bodySmall: GoogleFonts.montserrat(
                fontSize: 15.4.sp,
                color: Colors.black,
                letterSpacing: 0,
                fontWeight: FontWeight.w500),
            bodyMedium: GoogleFonts.montserrat(
                fontSize: 17.6.sp,
                color: Colors.black,
                letterSpacing: 0,
                fontWeight: FontWeight.w600),
          ),
        ),
        home: const  PaywallView(),
      );
    });
  }
}
