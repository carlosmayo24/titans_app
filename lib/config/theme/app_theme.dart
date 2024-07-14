import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme 
{
  ThemeData getTheme() => ThemeData
  (
    useMaterial3: true,
    colorSchemeSeed: Colors.amber,
    appBarTheme:  AppBarTheme
    (
      backgroundColor: Colors.amber,
      centerTitle: true,
      titleTextStyle: TextStyle(fontFamily: GoogleFonts.kanit().fontFamily,color: Colors.black,fontSize: 30)

    ),
  
    listTileTheme: ListTileThemeData
    (
      titleTextStyle: TextStyle(fontSize: 20,color: Colors.black,fontFamily:  GoogleFonts.manrope().fontFamily,)
    )
  );
}