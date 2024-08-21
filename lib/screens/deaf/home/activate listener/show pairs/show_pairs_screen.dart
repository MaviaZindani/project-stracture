import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowPairsScreen extends StatelessWidget {
  const ShowPairsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AddHeight(0.02),
            ScreenPadding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      AppNavigation.goBack();
                    },
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: DesignConstants.kButtonBg,
                      ),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Show Pairs",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ],
              ),
            ),
            const AddHeight(0.015),
            const Divider(
              height: 1,
              color: DesignConstants.kAppBarDividerColor,
            ),
            const AddHeight(0.02),
            ScreenPadding(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AddHeight(0.02),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sentences",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      Text(
                        "View All",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontWeight: FontWeight.w400, fontSize: 12),
                      )
                    ],
                  ),
                  const AddHeight(0.02),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: ListTile(
                      onTap: () => AppNavigation.navigateTo(
                          AppRoutesNames.editPairsScreen),
                      title: Text(
                        "Paired Number: 664",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: DesignConstants.kPrimaryColor),
                      ),
                      subtitle: Text(
                        "My school starts at 8:00",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      trailing: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: DesignConstants.kPrimaryColor),
                            child: const Icon(
                              Icons.play_arrow,
                              size: 18,
                              color: DesignConstants.kPlayBtnLightColor,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Icon(
                            Icons.edit,
                            size: 18,
                            color: DesignConstants.kLightGreyColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const AddHeight(0.01),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: ListTile(
                      onTap: () => AppNavigation.navigateTo(
                          AppRoutesNames.editPairsScreen),
                      title: Text(
                        "Paired Number: 664",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: DesignConstants.kPrimaryColor),
                      ),
                      subtitle: Text(
                        "My school starts at 8:00",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      trailing: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: DesignConstants.kPrimaryColor),
                            child: const Icon(
                              Icons.play_arrow,
                              size: 18,
                              color: DesignConstants.kPlayBtnLightColor,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Icon(
                            Icons.edit,
                            size: 18,
                            color: DesignConstants.kLightGreyColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const AddHeight(0.01),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: ListTile(
                      onTap: () => AppNavigation.navigateTo(
                          AppRoutesNames.editPairsScreen),
                      title: Text(
                        "Paired Number: 664",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: DesignConstants.kPrimaryColor),
                      ),
                      subtitle: Text(
                        "My school starts at 8:00",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      trailing: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: DesignConstants.kPrimaryColor),
                            child: const Icon(
                              Icons.play_arrow,
                              size: 18,
                              color: DesignConstants.kPlayBtnLightColor,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Icon(
                            Icons.edit,
                            size: 18,
                            color: DesignConstants.kLightGreyColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const AddHeight(0.02),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Words",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      Text(
                        "View All",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontWeight: FontWeight.w400, fontSize: 12),
                      )
                    ],
                  ),
                  const AddHeight(0.02),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: ListTile(
                      onTap: () => AppNavigation.navigateTo(
                          AppRoutesNames.editPairsScreen),
                      title: Text(
                        "Paired Number: 664",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: DesignConstants.kPrimaryColor),
                      ),
                      subtitle: Text(
                        "Help",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      trailing: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: DesignConstants.kPrimaryColor),
                            child: const Icon(
                              Icons.play_arrow,
                              size: 18,
                              color: DesignConstants.kPlayBtnLightColor,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Icon(
                            Icons.edit,
                            size: 18,
                            color: DesignConstants.kLightGreyColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const AddHeight(0.01),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: ListTile(
                      onTap: () => AppNavigation.navigateTo(
                          AppRoutesNames.editPairsScreen),
                      title: Text(
                        "Paired Number: 664",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: DesignConstants.kPrimaryColor),
                      ),
                      subtitle: Text(
                        "Need",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      trailing: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: DesignConstants.kPrimaryColor),
                            child: const Icon(
                              Icons.play_arrow,
                              size: 18,
                              color: DesignConstants.kPlayBtnLightColor,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Icon(
                            Icons.edit,
                            size: 18,
                            color: DesignConstants.kLightGreyColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const AddHeight(0.01),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: ListTile(
                      onTap: () => AppNavigation.navigateTo(
                          AppRoutesNames.editPairsScreen),
                      title: Text(
                        "Paired Number: 664",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: DesignConstants.kPrimaryColor),
                      ),
                      subtitle: Text(
                        "Call",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      trailing: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: DesignConstants.kPrimaryColor),
                            child: const Icon(
                              Icons.play_arrow,
                              size: 18,
                              color: DesignConstants.kPlayBtnLightColor,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Icon(
                            Icons.edit,
                            size: 18,
                            color: DesignConstants.kLightGreyColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
