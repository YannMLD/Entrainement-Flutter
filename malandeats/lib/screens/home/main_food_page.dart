import 'package:flutter/material.dart';
import 'package:malandeats/colors/app_colors.dart';
import 'package:malandeats/screens/home/food_page_body.dart';
import 'package:malandeats/utils/dimensions.dart';
import 'package:malandeats/widgets/big_text.dart';
import 'package:malandeats/widgets/small_text.dart';
import 'package:heroicons/heroicons.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: Dimensions.widthXLarge, bottom: Dimensions.heightMedium),
            padding: EdgeInsets.only(left: Dimensions.widthBig, right: Dimensions.widthBig),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Column(
                  children: [
                    BigText(text: 'France', color: AppColors.primary,),
                    Row(
                      children: [
                        SmallText(text: "Nantes", color: Colors.black54),
                        const HeroIcon(HeroIcons.chevronDown, size: 12)
                      ],
                    )

                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.heightXLarge,
                    height: Dimensions.heightXLarge,
                    child: Icon(Icons.search, color: Colors.white, size: Dimensions.h4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.mediumRadius),
                      color: AppColors.primary
                    ),
                  ),
                )
              ]
              ),
          ),
          const Expanded(
            child: 
              SingleChildScrollView(child: FoodPageBody()),
            
          )
        ],
      ),
    );
  }
}
