import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:malandeats/colors/app_colors.dart';
import 'package:malandeats/utils/dimensions.dart';
import 'package:malandeats/widgets/app_icon.dart';
import 'package:malandeats/widgets/big_text.dart';
import 'package:malandeats/widgets/expendable_text.dart';

class RecomandedFoodDetails extends StatelessWidget {
  const RecomandedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              toolbarHeight: 84,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: HeroIcons.chevronLeft),
                  AppIcon(icon: HeroIcons.shoppingBag)
                ],
              ),
              bottom: PreferredSize(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.largeRadius),
                          topRight: Radius.circular(Dimensions.largeRadius),
                        ),
                        color: Colors.white,
                      ),
                      width: double.maxFinite,
                      padding: EdgeInsets.all(Dimensions.heightSmall),
                      child:
                          Center(child: BigText(text: "Blanquette de veau"))),
                  preferredSize: const Size.fromHeight(20)),
              pinned: true,
              expandedHeight: 300,
              backgroundColor: AppColors.primary,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1081&q=80'),
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              )),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.widthMedium,
                    right: Dimensions.widthMedium),
                child: const ExpendableTextWidget(
                    text:
                        "La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris.La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris. La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris."),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.only(
            left: Dimensions.widthLarge,
            right: Dimensions.widthLarge,
            top: Dimensions.widthSmall,
            bottom: Dimensions.widthSmall,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                icon: HeroIcons.minus,
                backgroundColor: AppColors.primary,
                iconColor: Colors.white,
                iconSize: Dimensions.largeFont,
              ),
              BigText(
                text: "12,47€ X 0",
                size: Dimensions.h3,
              ),
              AppIcon(
                icon: HeroIcons.plus,
                backgroundColor: AppColors.primary,
                iconColor: Colors.white,
                iconSize: Dimensions.largeFont,
              ),
            ],
          ),
        ),
        Container(
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
                    borderRadius:
                        BorderRadius.circular(Dimensions.largeRadius)),
                child: HeroIcon(
                  HeroIcons.heart,
                  solid: true,
                  color: AppColors.primary,
                  size: Dimensions.h5,
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
                    borderRadius:
                        BorderRadius.circular(Dimensions.largeRadius)),
                child: BigText(
                  text: "2€ | Ajouter au panier",
                  color: Colors.white,
                  size: Dimensions.h6,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
