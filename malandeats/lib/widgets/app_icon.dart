import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:malandeats/colors/app_colors.dart';

class AppIcon extends StatelessWidget {
  final HeroIcons icon;
  final Color iconColor;
  final Color backgroundColor;
  final double size;

  const AppIcon(
      {Key? key,
      required this.icon,
      this.iconColor = AppColors.black,
      this.backgroundColor = Colors.white60,
      this.size = 42})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size / 2),
            color: backgroundColor,
          ),
        ),
         HeroIcon(
            icon,
            size: 16,
          )
      ],
    );
  }
}
