import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../generic_widgets/textfield/listener_text_form_field.dart';

class ListenerChangePasswordScreen extends StatelessWidget {
  const ListenerChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              width: double.maxFinite,
              child: Stack(
                children: [
                  DeafAssetImage(imagePath: AppImages.listenerTopCircle),
                  Positioned(
                      left: 28.0,
                      top: 60.0,
                      child: GestureDetector(
                      onTap: () => AppNavigation.goBack(),
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: DesignConstants.kButtonBg2,
                        ),
                        child: const Icon(Icons.arrow_back),
                      ),
                    )
                      )
                ],
              ),
            ),
            const AddHeight(0.1),
            Text(
              "Change Password",
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
            ),
            const AddHeight(0.005),
            Text(
              "Please enter a strong yet memorable password",
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            const AddHeight(0.03),
            ScreenPadding(
              child: ListenerTextFormField(
                fillColorWhite: false,
                removePrefixPadding: true,
                showErrorBorder: false,
                isPassword: true,
                label: "New Password",
                prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Icon(
                      Icons.lock_outline,
                      color: DesignConstants.kDividerColor,
                    )),
                suffixIcon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: DesignConstants.kDividerColor,
                ),
                showFocusedBorder: false,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(
                    color: DesignConstants.kDividerColor,
                  ),
                ),
                textInputType: TextInputType.emailAddress,
                textEditingController: TextEditingController(),
                onChanged: (value) {},
              ),
            ),
            const AddHeight(0.025),
            ScreenPadding(
              child: ListenerTextFormField(
                fillColorWhite: false,
                removePrefixPadding: true,
                showErrorBorder: false,
                isPassword: true,
                label: "Confirm Password",
                prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Icon(
                      Icons.lock_outline,
                      color: DesignConstants.kDividerColor,
                    )),
                suffixIcon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: DesignConstants.kDividerColor,
                ),
                showFocusedBorder: false,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(
                    color: DesignConstants.kDividerColor,
                  ),
                ),
                textInputType: TextInputType.emailAddress,
                textEditingController: TextEditingController(),
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          AppNavigation.navigateTo(AppRoutesNames.signUpSuccess);
        },
        child: Hero(
          tag: "auth",
          child: Container(
            height: 60,
            width: double.maxFinite,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            margin: const EdgeInsets.symmetric(
              horizontal: 36,
            ),
            decoration: BoxDecoration(
                color: DesignConstants.kPrimaryColor2,
                borderRadius: BorderRadius.circular(14.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(child: SizedBox()),
                Text(
                  "Set Password",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: DesignConstants.kWhiteColor),
                ),
                const Expanded(child: SizedBox()),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
