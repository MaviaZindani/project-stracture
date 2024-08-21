import 'package:deaf_app/const/data_const.dart';
import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
                  const CircleAvatar(
                    radius: 23,
                    backgroundImage: NetworkImage(
                        "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Alexander",
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
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 54,
        width: double.maxFinite,
        margin: const EdgeInsets.symmetric(
            horizontal: DataConstants.kScreenHorizontalPadding),
        padding: const EdgeInsets.only(
            left: 12.0, right: 8.0, top: 5.0, bottom: 5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Colors.white,
            border: Border.all(
                width: 1.4, color: DesignConstants.kresourcesBorderColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Search And Connect Receiver",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: DesignConstants.kLighGreyColor),
              ),
            ),
            Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: DesignConstants.kSelectedHourColor,
                ),
                child:
                    DeafAssetImage(imagePath: AppImages.pickFromGalleryIcon)),
            const SizedBox(
              width: 8.0,
            ),
            Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: DesignConstants.kPrimaryColor,
                ),
                child: DeafAssetImage(imagePath: AppImages.sendMessageIcon))
          ],
        ),
      ),
    );
  }
}
