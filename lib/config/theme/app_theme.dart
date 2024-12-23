import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final myAppTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: myPrimaryColor,
    primary: myPrimaryColor,
  ),
  textTheme: GoogleFonts.robotoFlexTextTheme(),
  // bottomSheetTheme: BottomSheetThemeData(
  //   backgroundColor: Colors.black.withOpacity(0),
  // ),
);

const myPrimaryColor = Color(0xFFf88848);
const mySecondaryColor = Color(0xFffe7565);
