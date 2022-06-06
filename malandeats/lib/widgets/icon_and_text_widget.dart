import 'package:flutter/cupertino.dart';
import 'package:heroicons/heroicons.dart';
import 'package:malandeats/utils/dimensions.dart';
import 'package:malandeats/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final HeroIcons icon;
  final String text;
  final Color iconColor;

  const IconAndTextWidget(
      {Key? key, 
      required this.icon, 
      required this.text, 
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeroIcon(icon, color: iconColor, size: Dimensions.h6),
        const SizedBox(width: 5),
        SmallText(text: text)
      ],
    );
  }
}
