import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/screens/deaf/menu/widgets/profile_tile.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../const/design_const.dart';
import '../../../routing/app_navigator.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: ScreenPadding(
          child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AddHeight(0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    AppNavigation.goBack();
                  },
                  child: Container(
                    height: 48,
                    width: 48,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: DesignConstants.kSecondaryTextColor,
                    ),
                    child: Text(
                      "X",
                      style: GoogleFonts.nunito(
                          fontSize: 22.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            const AddHeight(0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 139,
                          width: 139,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.wikihow.com/images/thumb/9/90/What_type_of_person_are_you_quiz_pic.png/1200px-What_type_of_person_are_you_quiz_pic.png"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 46,
                          width: 46,
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                              color: DesignConstants.kPrimaryColor,
                              shape: BoxShape.circle),
                          child: DeafAssetImage(
                              imagePath: AppImages.earListenIcon),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const AddHeight(0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Amelia",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: DesignConstants.kTextBlackColor),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "amelia_34",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: DesignConstants.kTextBlackColor),
                ),
              ],
            ),
            const AddHeight(0.03),
            ProfileTile(
                title: "Profile Settings",
                iconPath: AppImages.profileIcon,
                onTap: () {}),
            const AddHeight(0.02),
            ProfileTile(
                title: "Subscription",
                iconPath: AppImages.subscriptionIcon,
                onTap: () {}),    
            const AddHeight(0.02),
            ProfileTile(
                title: "My Cloud Storage",
                iconPath: AppImages.cloudStorageIcon,
                onTap: () {}),    
                const AddHeight(0.02),
            ProfileTile(
                title: "Security Settings",
                iconPath: AppImages.securitySettingsIcon,
                onTap: () {}),  
            const AddHeight(0.02),
            ProfileTile(
                title: "Resources",
                iconPath: AppImages.resourcesIcon,
                onTap: () {}),          
            const AddHeight(0.02),
            ProfileTile(
                title: "Rate Our App",
                iconPath: AppImages.rateIcon,
                onTap: () {}),          
                const AddHeight(0.02),
            ProfileTile(
                title: "Logout",
                iconPath: AppImages.logOutIcon,
                onTap: () {}),                
          ],
        ),
      )),
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          height: 60,
          width: double.maxFinite,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          margin: const EdgeInsets.symmetric(
            horizontal: 36,
          ),
          decoration: BoxDecoration(
              color: DesignConstants.kPrimaryColor,
              borderRadius: BorderRadius.circular(14.0)),
          child: Text(
            "Upgrade to Cloud Storage",
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: DesignConstants.kWhiteColor),
          ),
        ),
      ),
    );
  }
}
