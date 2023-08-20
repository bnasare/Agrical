import 'package:flutter/material.dart';
import 'package:agrical_ii/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.gray90001,
      );
  static BoxDecoration get txtFill1 => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.gray900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fill9 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fill8 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fill5 => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get outline2 => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.6),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              3,
            ),
          ),
        ],
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.blueGray200,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.6),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get fill7 => BoxDecoration(
        color: appTheme.blueGray9008e,
      );
  static BoxDecoration get outline4 => BoxDecoration(
        color: appTheme.red10001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fill6 => BoxDecoration(
        color: appTheme.gray9008e,
      );
  static BoxDecoration get outline3 => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.6),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              3,
            ),
          ),
        ],
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get outline5 => BoxDecoration(
        color: appTheme.gray400.withOpacity(0.68),
        border: Border.all(
          color: appTheme.black900,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.gray900.withOpacity(0.56),
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.red10001,
      );
  static BoxDecoration get fill10 => BoxDecoration(
        color: appTheme.gray50001,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderBL24 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius circleBorder47 = BorderRadius.circular(
    getHorizontalSize(
      47,
    ),
  );

  static BorderRadius circleBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius roundedBorder51 = BorderRadius.circular(
    getHorizontalSize(
      51,
    ),
  );

  static BorderRadius circleBorder28 = BorderRadius.circular(
    getHorizontalSize(
      28,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
