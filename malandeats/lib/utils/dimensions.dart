


import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight/(2.6375);
  static double pageViewContainer = screenHeight/(3.836363636);
  static double pageViewTextContainer = screenHeight/(7.0333333333);

  static const double _baseSpacing = 4.0;
  static const double _heightReference = 844.0;

  static double heightXXSmall = screenHeight/(_heightReference/(_baseSpacing*1));
  static double heightXSmall = screenHeight/(_heightReference/(_baseSpacing*2));
  static double heightSmall = screenHeight/(_heightReference/(_baseSpacing*3));
  static double heightMedium = screenHeight/(_heightReference/(_baseSpacing*4));
  static double heightBig = screenHeight/(_heightReference/(_baseSpacing*5));
  static double heightXBig = screenHeight/(_heightReference/(_baseSpacing*6));
  static double heightXXBig = screenHeight/(_heightReference/(_baseSpacing*7));
  static double heightXXXBig = screenHeight/(_heightReference/(_baseSpacing*8));
  static double heightLarge = screenHeight/(_heightReference/(_baseSpacing*10));
  static double heightXLarge = screenHeight/(_heightReference/(_baseSpacing*12));
  static double heightXXLarge = screenHeight/(_heightReference/(_baseSpacing*16));
  static double heightXXXLarge = screenHeight/(_heightReference/(_baseSpacing*20));
  static double heightHuge = screenHeight/(_heightReference/(_baseSpacing*24));
  static double heightXHuge = screenHeight/(_heightReference/(_baseSpacing*32));
  static double heightXXHuge = screenHeight/(_heightReference/(_baseSpacing*40));
  static double heightXXXHuge = screenHeight/(_heightReference/(_baseSpacing*48));

  static double widthXXSmall = screenHeight/(_heightReference/(_baseSpacing*1));
  static double widthXSmall = screenHeight/(_heightReference/(_baseSpacing*2));
  static double widthSmall = screenHeight/(_heightReference/(_baseSpacing*3));
  static double widthMedium = screenHeight/(_heightReference/(_baseSpacing*4));
  static double widthBig = screenHeight/(_heightReference/(_baseSpacing*5));
  static double widthXBig = screenHeight/(_heightReference/(_baseSpacing*6));
  static double widthXXBig = screenHeight/(_heightReference/(_baseSpacing*7));
  static double widthXXXBig = screenHeight/(_heightReference/(_baseSpacing*8));
  static double widthLarge = screenHeight/(_heightReference/(_baseSpacing*10));
  static double widthXLarge = screenHeight/(_heightReference/(_baseSpacing*12));
  static double widthXXLarge = screenHeight/(_heightReference/(_baseSpacing*16));
  static double widthXXXLarge = screenHeight/(_heightReference/(_baseSpacing*20));
  static double widthHuge = screenHeight/(_heightReference/(_baseSpacing*24));
  static double widthXHuge = screenHeight/(_heightReference/(_baseSpacing*32));
  static double widthXXHuge = screenHeight/(_heightReference/(_baseSpacing*40));
  static double widthXXXHuge = screenHeight/(_heightReference/(_baseSpacing*48));

  // Font sizes
   // Heading Font Sizes
  static double h1 = screenHeight / (_heightReference / 36.0);
  static double h2 = screenHeight / (_heightReference / 32.0);
  static double h3 = screenHeight / (_heightReference / 28.0);
  static double h4 = screenHeight / (_heightReference / 24.0);
  static double h5 = screenHeight / (_heightReference / 20.0);
  static double h6 = screenHeight / (_heightReference / 18.0);

  // Paragraph font sizes
  static double largeFont = screenHeight / (_heightReference / 18.0);
  static double mediumFont = screenHeight / (_heightReference / 16.0);
  static double smallFont = screenHeight / (_heightReference / 14.0);
  static double xsmallFont = screenHeight / (_heightReference / 12.0);

  static double xSmallRadius = screenHeight/(_heightReference/(_baseSpacing*1));
  static double smallRadius = screenHeight/(_heightReference/(_baseSpacing*2));
  static double mediumRadius = screenHeight/(_heightReference/(_baseSpacing*3));
  static double largeRadius = screenHeight/(_heightReference/(_baseSpacing*4));
  static double xLargeRadius = screenHeight/(_heightReference/(_baseSpacing*5));
  static double hugeRadius = screenHeight/(_heightReference/(_baseSpacing*8));

  // Popular Food
  static double popularFoodImgSize = screenHeight/(_heightReference/350);

}