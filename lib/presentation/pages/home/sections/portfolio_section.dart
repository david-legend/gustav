import 'package:amor/presentation/layout/adaptive.dart';
import 'package:amor/presentation/widgets/portfolio_item.dart';
import 'package:amor/presentation/widgets/section_title.dart';
import 'package:amor/presentation/widgets/spaces.dart';
import 'package:amor/values/values.dart';
import 'package:flutter/material.dart';

import 'package:layout/layout.dart';

import '../../../../utils/functions.dart';
import '../../../widgets/certification_card.dart';

const double kMainAxisSpacing = 60.0;
const double kCrossAxisSpacing = 30.0;
const double portfolioItemHeight1 = 400;
const double portfolioItemHeight2 = 200;
const double bigScreenTabHeight =
    (portfolioItemHeight1 * 2) + (kMainAxisSpacing * 2);
const double smallScreenTabHeight =
    (portfolioItemHeight2 * 4) + (kMainAxisSpacing * 4);

class PortfolioSection extends StatefulWidget {
  @override
  _PortfolioSectionState createState() => _PortfolioSectionState();
}

class _PortfolioSectionState extends State<PortfolioSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            title: StringConst.PORTFOLIO,
          ),
          SpaceH40(),
          Wrap(
            spacing: Sizes.SIZE_20,
            runSpacing: Sizes.SIZE_20,
            children: _buildCertification(Data.portfolioData),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildCertification(List<PortfolioData> data) {
    List<Widget> certifications = [];
    double smWidth = assignWidth(context, 0.3);
    double lgWidth = assignWidth(context, 0.5);
    double smHeight = assignHeight(context, 0.3);
    double lgHeight = assignHeight(context, 0.45);
    double certificateHeight = context.layout.value(
      xs: smHeight,
      sm: smHeight,
      md: lgHeight,
      lg: lgHeight,
      xl: lgHeight,
    );
    double certificateWidth = context.layout.value(
      xs: lgWidth,
      sm: smWidth,
      md: smWidth,
      lg: smWidth,
      xl: smWidth,
    );

    for (int i = 0; i < data.length; i++) {
      certifications.add(
        CertificationCard(
          hasBottomTitle: true,
          imageUrl: data[i].imageUrl,
          onTap: () => openUrlLink(data[i].url),
          title: data[i].title,
          subtitle: data[i].client,
          border: Border.all(
            color: AppColors.purple50,
            width: Sizes.WIDTH_2,
          ),
          height: certificateHeight,
          width: certificateWidth,
        ),
      );
    }
    return certifications;
  }
}
