// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelMediumGray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: getFontSize(
          10,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRed100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red100,
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeYellow50 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.yellow50,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumInterIndigo400cc =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.indigo400Cc,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumLightgreen90001 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lightGreen90001,
        fontSize: getFontSize(
          10,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumLightgreen900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lightGreen900,
        fontSize: getFontSize(
          10,
        ),
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumRed100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red100,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          15,
        ),
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: getFontSize(
          17,
        ),
      );
  static get titleSmallInterBluegray50 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray50,
        fontSize: getFontSize(
          15,
        ),
      );
  // Body text style
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallGray90082 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90082,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.46),
      );
  static get bodySmallPoppinsOnErrorContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: getFontSize(
          10,
        ),
      );
  // Poppins text style
  static get poppinsYellow50 => TextStyle(
        color: appTheme.yellow50,
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w700,
      ).poppins;
}

extension on TextStyle {
  TextStyle get anton {
    return copyWith(
      fontFamily: 'Anton',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get mrsSaintDelafield {
    return copyWith(
      fontFamily: 'Mrs Saint Delafield',
    );
  }
}
