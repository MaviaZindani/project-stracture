import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../const/design_const.dart';
import '../../../generic_widgets/screen_widgets/listener_custom_scaffol.dart';
import '../../../routing/app_navigator.dart';
import 'widgets/profile_tile.dart';

class ListenerMenuScreen extends StatelessWidget {
  const ListenerMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenerCustomScaffold(
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
                      color: DesignConstants.kButtonBg2,
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
                          padding: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                              color: DesignConstants.kPrimaryColor2,
                              shape: BoxShape.circle),
                          child: DeafAssetImage(
                              imagePath: AppImages.listenerIcon, color: Colors.white,),
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
            ListenerProfileTile(
                title: "Profile Settings",
                iconPath: AppImages.profileIcon,
                onTap: () {}),
                const AddHeight(0.02),
            ListenerProfileTile(
                title: "Security Settings",
                iconPath: AppImages.securitySettingsIcon,
                onTap: () {}),  
            const AddHeight(0.02),
            ListenerProfileTile(
                title: "Resources",
                iconPath: AppImages.listenerResourcesIconMenu,
                onTap: () {}),          
            const AddHeight(0.02),
            ListenerProfileTile(
                title: "Rate Our App",
                iconPath: AppImages.rateIcon,
                onTap: () {}),          
                const AddHeight(0.02),
            ListenerProfileTile(
                title: "Logout",
                iconPath: AppImages.logOutIcon,
                onTap: () {}),                
          ],
        ),
      )),
    );
  }
}
