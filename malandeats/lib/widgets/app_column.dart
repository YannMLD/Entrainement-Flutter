import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:malandeats/colors/app_colors.dart';
import 'package:malandeats/utils/dimensions.dart';
import 'package:malandeats/widgets/big_text.dart';
import 'package:malandeats/widgets/icon_and_text_widget.dart';
import 'package:malandeats/widgets/small_text.dart';

class AppColumn extends StatelessWidget {

  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BigText(text: text, size: Dimensions.h3,),
                    SizedBox(height: Dimensions.heightXSmall),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(
                                5,
                                (index) => const HeroIcon(
                                      HeroIcons.star,
                                      color: AppColors.primary,
                                      solid: true,
                                      size: 12,
                                    ))),
                        SizedBox(width: Dimensions.heightXSmall),
                        SmallText(text: "4,5"),
                        SizedBox(width: Dimensions.heightMedium),
                        SmallText(text: "1234 commentaires")
                      ],
                    ),
                    SizedBox(height: Dimensions.heightXSmall),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          IconAndTextWidget(
                              icon: HeroIcons.informationCircle,
                              text: "Normal",
                              iconColor: Colors.deepPurple),
                          IconAndTextWidget(
                              icon: HeroIcons.locationMarker,
                              text: "1,7km",
                              iconColor: Colors.green),
                          IconAndTextWidget(
                              icon: HeroIcons.clock,
                              text: "15 min",
                              iconColor: Colors.orangeAccent),
                        ]),
                  ],
                );
  }
}