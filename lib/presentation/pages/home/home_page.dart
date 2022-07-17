import 'package:amor/presentation/layout/adaptive.dart';
import 'package:amor/presentation/pages/home/sections/about_section.dart';
import 'package:amor/presentation/pages/home/sections/education_section.dart';
import 'package:amor/presentation/pages/home/sections/experience_section.dart';
import 'package:amor/presentation/pages/home/sections/footer_section.dart';
import 'package:amor/presentation/pages/home/sections/header_section.dart';
import 'package:amor/presentation/pages/home/sections/nav_section/nav_section_mobile.dart';
import 'package:amor/presentation/pages/home/sections/nav_section/nav_section_web.dart';
import 'package:amor/presentation/pages/home/sections/skills_section.dart';
import 'package:amor/presentation/widgets/app_drawer.dart';
import 'package:amor/presentation/widgets/nav_item.dart';
import 'package:amor/presentation/widgets/spaces.dart';
import 'package:amor/values/values.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:layout/layout.dart';

import 'sections/portfolio_section.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  final List<NavItemData> navItems = [
    NavItemData(name: StringConst.HOME, key: GlobalKey(), isSelected: true),
    NavItemData(name: StringConst.ABOUT, key: GlobalKey()),
    NavItemData(name: StringConst.RESUME, key: GlobalKey()),
    NavItemData(name: StringConst.SKILLS_AND_CERTIFICATION, key: GlobalKey()),
    NavItemData(name: StringConst.PORTFOLIO, key: GlobalKey()),
    NavItemData(name: StringConst.CONTACT, key: GlobalKey()),
  ];

  @override
  Widget build(BuildContext context) {
    double sidePadding = getSidePadding(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: ResponsiveBuilder(
        refinedBreakpoints: RefinedBreakpoints(),
        builder: (context, sizingInformation) {
          if (sizingInformation.isMobile) {
            return AppDrawer(
              menuList: navItems,
            );
          } else {
            return Container();
          }
        },
      ),
      body: Column(
        children: [
          ResponsiveBuilder(
            refinedBreakpoints: RefinedBreakpoints(),
            builder: (context, sizingInformation) {
              if (sizingInformation.isMobile) {
                return NavSectionMobile(scaffoldKey: _scaffoldKey);
              } else {
                return NavSectionWeb(
                  navItems: navItems,
                );
              }
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    key: navItems[0].key,
                    child: HeaderSection(),
                  ),
                  SpaceH60(),
                  Container(
                    key: navItems[1].key,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: sidePadding),
                      child: AboutSection(),
                    ),
                  ),
                  SpaceH60(),
                  Container(
                    key: navItems[2].key,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: sidePadding),
                      child: EducationSection(),
                    ),
                  ),
                  SpaceH60(),
                  ExperienceSection(),
                  SpaceH60(),
                  Container(
                    key: navItems[3].key,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: sidePadding),
                      child: SkillsSection(),
                    ),
                  ),
                  SpaceH60(),
                  Container(
                    key: navItems[4].key,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: sidePadding),
                      child: PortfolioSection(),
                    ),
                  ),
                  SpaceH60(),
                  FooterSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
