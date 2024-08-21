import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/screen_helper.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = ScreenHelper.getScreenWidth(context);
    return Scaffold(
      body: ScreenPadding(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AddHeight(0.06),
          DeafAssetImage(imagePath: AppImages.welcomeTopBar),
          const AddHeight(0.03),
          Text(
            "Welcome to AppOgram",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          const AddHeight(0.005),
          Text(
            "Select role and Login",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          const AddHeight(0.05),
          InkWell(
            onTap: (){
              AppNavigation.navigateTo(AppRoutesNames.signIn);
            },
            child: Container(
              height: 180,
              width: width * 0.68,
              decoration: BoxDecoration(
                  color: const Color(0xffEBC2C8).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(14)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DeafAssetImage(imagePath: AppImages.deafIcon),
                  Text(
                    "Deaf",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Text(
                    "Sign in as a deaf",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          const AddHeight(0.02),
          InkWell(
            onTap: (){
              AppNavigation.navigateTo(AppRoutesNames.listenerSignInScreen);
            },
            child: Container(
              height: 180,
              width: width * 0.68,
              decoration: BoxDecoration(
                  color: const Color(0xffCBD8DF).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(14)),
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DeafAssetImage(imagePath: AppImages.listenerIcon),
                  Text(
                    "Listener",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Text(
                    "Sign in as a Listener",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
