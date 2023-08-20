import 'package:agrical_ii/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.width,
    this.height,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: IconButton(
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          iconSize: getSize(height ?? 0),
          padding: const EdgeInsets.all(0),
          icon: Container(
            alignment: Alignment.center,
            width: getSize(width ?? 0),
            height: getSize(height ?? 0),
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.errorContainer,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      23.00,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.black900.withOpacity(0.25),
                      spreadRadius: getHorizontalSize(
                        2.00,
                      ),
                      blurRadius: getHorizontalSize(
                        2.00,
                      ),
                      offset: const Offset(
                        3,
                        2,
                      ),
                    ),
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineBlack900TL23 => BoxDecoration(
        color: appTheme.blueGray40072,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: const Offset(
              3,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900TL231 => BoxDecoration(
        color: appTheme.gray90072,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: const Offset(
              3,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900TL232 => BoxDecoration(
        color: appTheme.indigo900D3,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: const Offset(
              3,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900TL233 => BoxDecoration(
        color: appTheme.gray700D3,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: const Offset(
              3,
              2,
            ),
          ),
        ],
      );
}
