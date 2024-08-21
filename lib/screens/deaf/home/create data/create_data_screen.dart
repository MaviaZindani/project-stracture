import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:deaf_app/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../generic_widgets/screen_widgets/custom_scaffold.dart';

class CreateDataMainScreen extends StatelessWidget {
  const CreateDataMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = ScreenHelper.getScreenHeight(context);
    return CustomScaffold(
      body: SafeArea(
          child: Column(
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
                  width: 10.0,
                ),
                Text(
                  "Create Data",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ],
            ),
          ),
          const AddHeight(0.02),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 126,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.createDataCover),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: height * 0.5,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 24.0),
                  margin:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 80.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.0),
                      color: Colors.white,
                      border: Border.all(
                          width: 0.5,
                          color: DesignConstants.kresourcesBorderColor)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                AppNavigation.navigateTo(
                                    AppRoutesNames.createSentenceScreen);
                              },
                              child: Container(
                                height: height * 0.19,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    border: Border.all(
                                      color: DesignConstants.khomeBorder,
                                      width: 1,
                                    ),
                                    color: DesignConstants.khomeTabColor),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    DeafAssetImage(
                                        imagePath:
                                            AppImages.activateListenerIcon),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Create Sentence",
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => AppNavigation.navigateTo(
                                  AppRoutesNames.createWordScreen),
                              child: Container(
                                height: height * 0.19,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    border: Border.all(
                                      color: DesignConstants.khomeBorder,
                                      width: 1,
                                    ),
                                    color: DesignConstants.khomeTabColor),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    DeafAssetImage(
                                        imagePath: AppImages.showUsersIcon),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Define Sounds",
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const AddHeight(0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => AppNavigation.navigateTo(
                                  AppRoutesNames.emergencyCommunicationScreen),
                              child: Container(
                                height: height * 0.19,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    border: Border.all(
                                      color: DesignConstants.khomeBorder,
                                      width: 1,
                                    ),
                                    color: DesignConstants.khomeTabColor),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    DeafAssetImage(
                                        imagePath: AppImages.showPairsIcon),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Emergency\nCommunication",
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                AppNavigation.navigateTo(
                                    AppRoutesNames.viewProfileDataScreen);
                              },
                              child: Container(
                                height: height * 0.19,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    border: Border.all(
                                      color: DesignConstants.khomeBorder,
                                      width: 1,
                                    ),
                                    color: DesignConstants.khomeTabColor),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    DeafAssetImage(
                                        imagePath: AppImages.profileIcon2),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Add Profile Data",
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
