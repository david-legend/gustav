import 'package:amor/presentation/layout/adaptive.dart';
import 'package:amor/presentation/widgets/content_area.dart';
import 'package:amor/presentation/widgets/nav_item.dart';
import 'package:amor/presentation/widgets/spaces.dart';
import 'package:amor/utils/functions.dart';
import 'package:amor/values/values.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:layout/layout.dart';

class NavSectionWeb extends StatefulWidget {
  final List<NavItemData> navItems;

  NavSectionWeb({required this.navItems});

  @override
  _NavSectionWebState createState() => _NavSectionWebState();
}

class _NavSectionWebState extends State<NavSectionWeb> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double sidePadding = getSidePadding(context);
    double screenWidth = widthOfScreen(context);
    double contentAreaWidth = screenWidth * 0.5;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          Shadows.elevationShadow,
        ],
      ),
      child: Row(
        children: [
          ContentArea(
            width: contentAreaWidth,
            height: Sizes.HEIGHT_56,
            backgroundColor: AppColors.white,
            child: Row(
              children: [
                SizedBox(width: sidePadding),
                SelectableText(
                  StringConst.NAME_ABBREV,
                  style: textTheme.headline3,
                ),
                Spacer(),
                NavItem(
                  title: widget.navItems[0].name,
                  isSelected: widget.navItems[0].isSelected,
                  textColor: AppColors.darkGrey800,
                  selectedColor: AppColors.deepBlue,
                  onTap: () => _onTapNavItem(
                    context: widget.navItems[0].key,
                    navItemName: widget.navItems[0].name,
                  ),
                ),
                horizontalSpacing(),
                NavItem(
                  title: widget.navItems[1].name,
                  isSelected: widget.navItems[1].isSelected,
                  selectedColor: AppColors.deepBlue,
                  textColor: AppColors.darkGrey800,
                  onTap: () => _onTapNavItem(
                    context: widget.navItems[1].key,
                    navItemName: widget.navItems[1].name,
                  ),
                ),
                SpaceW20(),
              ],
            ),
          ),
          ContentArea(
            width: contentAreaWidth,
            height: Sizes.HEIGHT_56,
            backgroundColor: AppColors.purple500,
            child: Row(
              children: [
                SpaceW20(),
                NavItem(
                  title: widget.navItems[2].name,
                  isSelected: widget.navItems[2].isSelected,
                  onTap: () => _onTapNavItem(
                    context: widget.navItems[2].key,
                    navItemName: widget.navItems[2].name,
                  ),
                ),
                horizontalSpacing(),
                ResponsiveBuilder(
                  refinedBreakpoints: RefinedBreakpoints(),
                  builder: (context, sizingInformation) {
                    double screenWidth = sizingInformation.screenSize.width;
                    //TODO:: Use this for actual.. if (screenWidth >= RefinedBreakpoints().tabletSmall &&  screenWidth < RefinedBreakpoints().tabletNormal) {
                    if (screenWidth < RefinedBreakpoints().tabletExtraLarge) {
                      return NavItem(
                        title: StringConst.SKILLS,
                        isSelected: widget.navItems[3].isSelected,
                        onTap: () => _onTapNavItem(
                          context: widget.navItems[3].key,
                          navItemName: widget.navItems[3].name,
                        ),
                      );
                    } else {
                      return NavItem(
                        title: widget.navItems[3].name,
                        isSelected: widget.navItems[3].isSelected,
                        onTap: () => _onTapNavItem(
                          context: widget.navItems[3].key,
                          navItemName: widget.navItems[3].name,
                        ),
                      );
                    }
                  },
                ),
                horizontalSpacing(),
                NavItem(
                  title: widget.navItems[4].name,
                  isSelected: widget.navItems[4].isSelected,
                  onTap: () => _onTapNavItem(
                    context: widget.navItems[4].key,
                    navItemName: widget.navItems[4].name,
                  ),
                ),
                horizontalSpacing(),
                NavItem(
                  title: widget.navItems[5].name,
                  isSelected: widget.navItems[5].isSelected,
                  onTap: () => openUrlLink(StringConst.EMAIL_URL),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _onTapNavItem({
    required GlobalKey context,
    required String navItemName,
  }) {
    for (int index = 0; index < widget.navItems.length; index++) {
      if (navItemName == widget.navItems[index].name) {
        scrollToSection(context.currentContext!);
        setState(() {
          widget.navItems[index].isSelected = true;
        });
      } else {
        widget.navItems[index].isSelected = false;
      }
    }
  }

  Widget horizontalSpacing() {
    double width = context.layout.value(
      xs: Sizes.WIDTH_24,
      sm: Sizes.WIDTH_24,
      md: Sizes.WIDTH_40,
      lg: Sizes.WIDTH_40,
      xl: Sizes.WIDTH_40,
    );
    return SizedBox(width: width);
  }
}
