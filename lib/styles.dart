import 'package:flutter/material.dart';

class Styles {
  static _Dimens dimens = _Dimens();
  static _Color color = _Color();
  static _TextStyle textStyle = _TextStyle();

  static InputDecoration inputForm(
          {Color? backgroundColor,
          final double radius = 5,
          String? hintText,
          final EdgeInsets? contentPadding}) =>
      InputDecoration(
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade600),
        fillColor: backgroundColor ?? Styles.color.textFieldColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.circular(radius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(radius),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(radius),
        ),
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(radius),
        ),
      );

  static InputDecoration inputFormD(
          {Color backgroundColor = Colors.white,
          final double radius = 5,
          String? hintText,
          final EdgeInsets? contentPadding}) =>
      InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ));

  //decorations
  static getTextFieldDecoration({String hint = ""}) {
    return InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromARGB(0, 255, 255, 255),
              width: 1.0,
              style: BorderStyle.solid),
        ),
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        fillColor: const Color.fromARGB(30, 255, 255, 255),
        filled: true);
  }

  static getButtonDecoration(
      {double radius = 15, double width = 2, Color color = Colors.white70}) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(width: width, color: color));
  }

  static getButtonDecoration2(
      {double radius = 15, double width = 2, Color color = Colors.white}) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(width: width, color: color),
        color: color);
  }

  static getNoImageDecoration() {
    return const DecorationImage(
        image: AssetImage("assets/logo.png"), fit: BoxFit.fill);
  }

  //textStyles
  static const fontFamilyRegular = "Nunito";
}

class _Dimens {
  final double screenPadding = 20;
}

class _Color {
  final primaryColor = Colors.black;
  final secondaryColor = const Color(0xff84CB15);
  final accentColor = const Color(0xffF43F5E);
  final blueColor = const Color(0xff3376e8);
  final textColor = const Color(0xFF292929);
  final backGroundColor = const Color(0xfff4f8fb);
  final textFieldColor = const Color(0xffeeeeee);
}

class _TextStyle {
  final bigHeadingTS = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final headingTS = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final subHeadingTS = TextStyle(
    fontSize: 18,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final regularTS = TextStyle(
    fontSize: 16,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final normalTS = TextStyle(
    fontSize: 14,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final smallTS = TextStyle(
    fontSize: 12,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final tooSmallTS = TextStyle(
    fontSize: 10,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
}

extension TextStyleExtension on TextStyle {
  TextStyle get extraBold {
    return copyWith(fontWeight: FontWeight.w800);
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.bold);
  }

  TextStyle get semiBold {
    return copyWith(fontWeight: FontWeight.w600);
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300);
  }

  TextStyle get thin {
    return copyWith(fontWeight: FontWeight.w100);
  }
}
