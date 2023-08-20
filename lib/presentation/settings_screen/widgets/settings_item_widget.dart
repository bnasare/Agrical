import 'package:agrical_ii/core/app_export.dart';
import 'package:agrical_ii/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingsItemWidget extends StatelessWidget {
  SettingsItemWidget({
    Key? key,
    this.onTapBtnVector,
  }) : super(
          key: key,
        );

  VoidCallback? onTapBtnVector;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          height: 45,
          width: 46,
          margin: getMargin(
            top: 1,
          ),
          padding: getPadding(
            all: 9,
          ),
          decoration: IconButtonStyleHelper.outlineBlack900TL23,
          onTap: () {
            onTapBtnVector?.call();
          },
          child: CustomImageView(
            svgPath: ImageConstant.imgVector,
          ),
        ),
        Container(
          height: getVerticalSize(
            43,
          ),
          width: getHorizontalSize(
            147,
          ),
          margin: getMargin(
            bottom: 2,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
