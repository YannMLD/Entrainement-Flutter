import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:malandeats/colors/app_colors.dart';
import 'package:malandeats/utils/dimensions.dart';
import 'package:malandeats/widgets/small_text.dart';

class ExpendableTextWidget extends StatefulWidget {

  final String text;

  const ExpendableTextWidget({ required this.text, Key? key}) : super(key: key);

  @override
  State<ExpendableTextWidget> createState() => _ExpendableTextWidgetState();
}

class _ExpendableTextWidgetState extends State<ExpendableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool isTextHidden=true;

  double textHeight = Dimensions.screenHeight/5.63;
  
  @override
  void initState() {
    super.initState();
    if(widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(lineHeight: 1.8, size: Dimensions.smallFont, text: firstHalf):Column(
        children: [
          SmallText(lineHeight: 1.8, size: Dimensions.smallFont, text: isTextHidden?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                isTextHidden= !isTextHidden;
              });
            },
            child: Row(children: [
              SmallText(text: isTextHidden?"Lire plus":"Lire moins", color: AppColors.primary,),
              HeroIcon(isTextHidden?HeroIcons.chevronDown:HeroIcons.chevronUp, color: AppColors.primary, size: 16,)

            ]),
          )
        ],
      )
    );
  }
}