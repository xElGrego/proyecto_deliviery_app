import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class DeliveryColors{
  static final purple = Color(0xFF5117AC);
  static final green = Color(0xFF20D0C4);
  static final dark = Color(0xFF03091E);
  static final grey = Color(0xFF212738);
  static final ligthGrey = Color(0xFFBBBBBB);
  static final veryLigthGrey = Color(0xFF3F3F3F3);
  static final white = Color(0xFFFFFFFF);
  static final pink = Color(0xFFF56388);

}

//Asigno el color por medio del displayColor y apply
final ligthTheme = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    displayColor: DeliveryColors.white,
  )
);