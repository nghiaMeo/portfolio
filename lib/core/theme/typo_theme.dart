import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypoTheme {
  static Color _headerColor(BuildContext context) =>
      Theme.of(context).colorScheme.onBackground;

  static Color _contentColor(BuildContext context) =>
      Theme.of(context).colorScheme.onSurface;

  static Widget bold60(BuildContext context, {required String text}) {
    return Text(
      text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: _headerColor(context),
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          fontSize: 60,
        ),
      ),
    );
  }

  static Widget medium14(BuildContext context, {required String text}) {
    return Text(
      text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: _contentColor(context),
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 14,
        ),
      ),
    );
  }

  static Widget medium16(BuildContext context, {required String text}) {
    return Text(
      text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: _contentColor(context),
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 16,
        ),
      ),
    );
  }

  static Widget regular16(BuildContext context, {required String text}) {
    return Text(
      text,
      softWrap: true,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: _contentColor(context),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 16,
        ),
      ),
    );
  }

  static Widget semiBold36(BuildContext context, {required String text}) {
    return Text(
      text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: _contentColor(context),
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 36,
        ),
      ),
    );
  }

  static Widget semiBold30(BuildContext context, {required String text}) {
    return Text(
      text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: _contentColor(context),
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 30,
        ),
      ),
    );
  }

  static Widget regular18(BuildContext context, {required String text}) {
    return Text(
      text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: _contentColor(context),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 18,
        ),
      ),
    );
  }

  static Widget regular20(BuildContext context, {required String text}) {
    return Text(
      text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: _contentColor(context),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 20,
        ),
      ),
    );
  }
}
