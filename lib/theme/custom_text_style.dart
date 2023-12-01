import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBluegray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray50001,
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray50002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray50002,
        fontSize: 10.fSize,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.69),
        fontSize: 12.fSize,
      );
  static get labelLargeBlack90012 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.69),
        fontSize: 12.fSize,
      );
  static get labelLargeBluegray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 12.fSize,
      );
  // Title text style
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.68),
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
