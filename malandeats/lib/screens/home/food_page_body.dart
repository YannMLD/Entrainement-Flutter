import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:malandeats/colors/app_colors.dart';
import 'package:malandeats/widgets/app_column.dart';
import 'package:malandeats/widgets/big_text.dart';
import 'package:malandeats/widgets/icon_and_text_widget.dart';
import 'package:malandeats/widgets/small_text.dart';

import '../../utils/dimensions.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(
    viewportFraction: 0.85,
  );
  var _currentPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Slider section
        SizedBox(
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        // Dots
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeColor: AppColors.primary,
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.xSmallRadius)),
          ),
        ),

        // Popular Text
        SizedBox(height: Dimensions.heightXLarge),
        Container(
            margin: EdgeInsets.only(
                left: Dimensions.widthXXBig, right: Dimensions.widthXXBig),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BigText(text: "Populaire"),
                SizedBox(width: Dimensions.widthXSmall),
                SmallText(text: '.'),
                SizedBox(width: Dimensions.widthXSmall),
                SmallText(text: 'Food pairing'),
              ],
            )),
        // List of food and images
        SizedBox(
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.widthSmall,
                      right: Dimensions.widthSmall,
                      bottom: Dimensions.heightSmall),
                  child: Row(
                    children: [
                      Container(
                        height: Dimensions.widthXHuge,
                        width: Dimensions.widthXHuge,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.xLargeRadius),
                          color: Colors.red,
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1081&q=80')),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: Dimensions.heightHuge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight:
                                  Radius.circular(Dimensions.mediumRadius),
                              bottomRight:
                                  Radius.circular(Dimensions.mediumRadius),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: Dimensions.widthXSmall,
                                right: Dimensions.widthXSmall),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BigText(
                                    text: 'Tarte aux pruneaux de Papi',
                                  ),
                                  SizedBox(height: Dimensions.heightXSmall),
                                  SmallText(
                                      text: 'Avec les pruneaux du jardin'),
                                  SizedBox(height: Dimensions.heightXSmall),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                ]),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

  // Part 1 - Jusqu'a 01:54:00
  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      // Entre 0.0 et 0.49
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      // entre 0.49 et 1
      var currentScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      // entre 0.49 et 1
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.widthXSmall, right: Dimensions.widthXSmall),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.hugeRadius),
                color: index.isEven
                    ? const Color(0xFF69c5df)
                    : const Color.fromRGBO(105, 223, 113, 1),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://source.unsplash.com/random/800x800/'))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.widthXXBig,
                  right: Dimensions.widthXXBig,
                  bottom: Dimensions.heightXXBig),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: AppColors.primary,
                      // blurRadius: 5,
                      offset: Offset(0, 5)),
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(5, 0))
                ],
                borderRadius: BorderRadius.circular(Dimensions.xLargeRadius),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.all(Dimensions.heightMedium),
                child: const AppColumn(text: "Blanquette de veau")
              ),
            ),
          ),
        ],
      ),
    );
  }
}
