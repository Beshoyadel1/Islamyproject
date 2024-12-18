import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamyproject/AppColors.dart';

class MyThemdata{
  static final ThemeData darkthem=ThemeData(
    scaffoldBackgroundColor:AppColor.transparentcolor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColor.transparentcolor,
      iconTheme: IconThemeData(
        color: AppColor.primarycolor,
      )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColor.primarycolor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor:AppColor.whitecolor,
      unselectedItemColor: AppColor.blackcolor,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColor.whitecolor
      ),
       titleMedium:GoogleFonts.elMessiri(
           fontSize: 24,
           fontWeight: FontWeight.bold,
           color: AppColor.blackcolor
       ),
      titleSmall: GoogleFonts.elMessiri(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColor.blackcolor
      ),
      headlineLarge: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColor.primarycolor
      ),
      headlineMedium: GoogleFonts.elMessiri(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: AppColor.blackcolor
      ),
      headlineSmall: GoogleFonts.elMessiri(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColor.blackcolor
      ),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColor.blackcolor
      ),
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: AppColor.whitecolor
      ),


    )
  );
}