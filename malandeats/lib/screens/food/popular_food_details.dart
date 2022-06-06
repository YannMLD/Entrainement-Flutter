import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:malandeats/colors/app_colors.dart';
import 'package:malandeats/utils/dimensions.dart';
import 'package:malandeats/widgets/app_column.dart';
import 'package:malandeats/widgets/app_icon.dart';
import 'package:malandeats/widgets/big_text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1081&q=80')),
                ),
              )),
          Positioned(
              top: Dimensions.heightLarge,
              left: Dimensions.widthMedium,
              right: Dimensions.widthMedium,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: HeroIcons.chevronLeft),
                  AppIcon(icon: HeroIcons.shoppingBag)
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.widthMedium,
                      right: Dimensions.widthMedium,
                      top: Dimensions.heightMedium),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.mediumRadius),
                          topLeft: Radius.circular(Dimensions.mediumRadius)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppColumn(text: "Blanquette de veau"),
                      SizedBox(height: Dimensions.heightMedium),
                      BigText(text: 'Présentation'),
                    ],
                  )))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.heightHuge,
        width: double.infinity,
        padding: EdgeInsets.only(
            top: Dimensions.heightMedium,
            bottom: Dimensions.heightMedium,
            left: Dimensions.widthMedium,
            right: Dimensions.widthMedium),
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.largeRadius),
              topRight: Radius.circular(Dimensions.largeRadius),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: Dimensions.heightMedium,
                  right: Dimensions.heightMedium,
                  top: Dimensions.heightSmall,
                  bottom: Dimensions.heightSmall),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.largeRadius)),
              child: Row(
                children: [
                   HeroIcon(HeroIcons.minus, color: Colors.black38, size: Dimensions.h6),
                  SizedBox(
                    width: Dimensions.widthXSmall,
                  ),
                  BigText(text: '0', size: Dimensions.h6),
                  SizedBox(
                    width: Dimensions.widthXSmall,
                  ),
                   HeroIcon(HeroIcons.plus, color: Colors.black38, size: Dimensions.h6),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: Dimensions.heightMedium,
                  right: Dimensions.heightMedium,
                  top: Dimensions.heightSmall,
                  bottom: Dimensions.heightSmall),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(Dimensions.largeRadius)
              ),
              child: BigText(text: "2€ | Ajouter au panier", color: Colors.white, size: Dimensions.h6,),
            )
          ],
        ),
      ),
    );
  }
}
