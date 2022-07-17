part of 'values.dart';

class Styles {
  static TextStyle customTextStyle({
    Color color = AppColors.darkGrey800,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = Sizes.TEXT_SIZE_14,
    FontStyle fontStyle: FontStyle.normal,
    TextDecoration decoration: TextDecoration.none,
  }) {
    return GoogleFonts.merriweather(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle customTextStyle2({
    Color color = AppColors.primaryText,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = Sizes.TEXT_SIZE_16,
    FontStyle fontStyle: FontStyle.normal,
    TextDecoration decoration: TextDecoration.none,
  }) {
    return GoogleFonts.lato(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }
}
