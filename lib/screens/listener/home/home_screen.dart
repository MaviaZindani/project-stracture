import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../const/design_const.dart';
import '../../../generic_widgets/screen_widgets/listener_custom_scaffol.dart';
import '../../../utils/screen_helper.dart';

class ListenerHomeScreen extends StatelessWidget {
  const ListenerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = ScreenHelper.getScreenHeight(context);
    final width = ScreenHelper.getScreenWidth(context);
    return ListenerCustomScaffold(
        body: ScreenPadding(
            child: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AddHeight(0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  AppNavigation.navigateTo(AppRoutesNames.listenerMenuScreen);
                },
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: DesignConstants.kButtonBg2,
                  ),
                  child: const Icon(Icons.menu),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                padding: const EdgeInsets.all(14.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: DesignConstants.kButtonBg2,
                ),
                child: DeafAssetImage(imagePath: AppImages.notificationIcon),
              ),
            ],
          ),
          const AddHeight(0.03),
          Text(
            "Welcome to",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          const AddHeight(0.004),
          Text(
            "App Ogram",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          const AddHeight(0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  AppNavigation.navigateTo(
                      AppRoutesNames.listenerResourcesScreen);
                },
                child: SizedBox(
                    height: height * 0.18,
                    width: width * 0.39,
                    child: DeafAssetImage(
                        imagePath: AppImages.listenerResourcesIcon)),
              ),
              GestureDetector(
                onTap: () {
                  AppNavigation.navigateTo(
                      AppRoutesNames.listenerProfileDataSettingsScreen);
                },
                child: SizedBox(
                  height: height * 0.18,
                  width: width * 0.39,
                  child: DeafAssetImage(
                      imagePath: AppImages.listenerProfileAndSettingsIcon),
                ),
              ),
            ],
          ),
          const AddHeight(0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => AppNavigation.navigateTo(
                    AppRoutesNames.listenerConnectionsScreen),
                child: SizedBox(
                    height: height * 0.18,
                    width: width * 0.39,
                    child: DeafAssetImage(
                        imagePath: AppImages.listenerConnectionsIcon)),
              ),
              GestureDetector(
                onTap: () => AppNavigation.navigateTo(
                    AppRoutesNames.listenerActivateListenerScreen),
                child: SizedBox(
                  height: height * 0.18,
                  width: width * 0.39,
                  child: DeafAssetImage(
                      imagePath: AppImages.listenerActiveListenerIcon),
                ),
              ),
            ],
          ),
          const AddHeight(0.02),
          GestureDetector(
            onTap: () => AppNavigation.navigateTo(
                AppRoutesNames.listenerLearnSignLanguageScreen),
            child: SizedBox(
              height: height * 0.18,
              width: double.maxFinite,
              child: DeafAssetImage(
                  imagePath: AppImages.listenerLearnSignLanguageIcon),
            ),
          ),
        ],
      ),
    )));
  }
}
