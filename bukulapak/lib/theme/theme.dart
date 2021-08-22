import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color

Color biruColor = Color(0xff498FF8);
Color lightColor = Color(0xffFFFFFF);
LinearGradient mainBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xffFFFFFF), Color(0xffEFF2F7)]);

// NOTE: FONT WEIGHTS
FontWeight thin = FontWeight.w100;
FontWeight extraLight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

// NOTE: TEXT STYLES
TextStyle font = GoogleFonts.poppins();

// Note: Shadows
BoxShadow shadow = BoxShadow(
  color: Colors.black.withOpacity(0.1),
  spreadRadius: 0,
  blurRadius: 10,
  offset: Offset(0, 0), // changes position of shadow
);

Widget buildBlur({
  @required Widget? child,
  BorderRadius? borderRadius,
  double sigmaX = 10,
  double sigmaY = 10,
}) =>
    ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: child,
      ),
    );


