import 'package:amor/presentation/widgets/spaces.dart';
import 'package:amor/values/values.dart';
import 'package:flutter/material.dart';

class PortfolioData {
  final String url;
  final String imageUrl;
  final String title;
  final String client;
  final double imageSize;

  const PortfolioData({
    required this.imageUrl,
    required this.title,
    required this.url,
    required this.client,
    this.imageSize = 0.30,
  });
}

class PortfolioItem extends StatelessWidget {
  final String portfolioTitle;
  final String imageUrl;
  final double borderRadius;
  final double? width;
  final double? height;
  final TextStyle? portfolioTitleStyle;

  PortfolioItem({
    required this.imageUrl,
    required this.portfolioTitle,
    this.width,
    this.height,
    this.borderRadius = Sizes.RADIUS_12,
    this.portfolioTitleStyle,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return
//      Container(
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(borderRadius),
//        image: DecorationImage(
//          image: AssetImage(imageUrl),
//          fit: BoxFit.cover,
//        ),
//      ),
//      child: Align(
//        alignment: Alignment.bottomCenter,
//        child: Text(
//          portfolioTitle,
//          style: portfolioTitleStyle ?? textTheme.subtitle1,
//        ),
//      ),
//    );
        Column(
//      mainAxisSize: MainAxisSize.min,
//      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SpaceH8(),
        Text(
          portfolioTitle,
          style: portfolioTitleStyle ?? textTheme.subtitle1,
        ),
      ],
    );
  }
}
