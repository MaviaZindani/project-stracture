import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/textfield/deaf_text_form_field.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../generic_widgets/screen_widgets/screen_padding.dart';
import '../../../utils/helper_widgets/add_height.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenPadding(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AddHeight(0.06),
              DeafAssetImage(imagePath: AppImages.welcomeTopBar),
              const AddHeight(0.03),
              Text(
                "Sign In",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700, fontSize: 22),
              ),
              const AddHeight(0.005),
              Text(
                "Enter your log in details below",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 14),
              ),
              const AddHeight(0.04),
              DeafTextFormField(
                  fillColorWhite: false,
                  removePrefixPadding: false,
                  prefixBoxConstraints: const BoxConstraints(
                      maxHeight: 35, maxWidth: 35, minHeight: 35, minWidth: 35),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: DeafAssetImage(
                      imagePath: AppImages.emailIcon,
                      height: 5,
                      width: 5,
                      scale: 3,
                    ),
                  ),
                  showErrorBorder: false,
                  label: "Email",
                  showFocusedBorder: false,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: DesignConstants.kTextFieldBorderColor,
                    ),
                  ),
                  textInputType: TextInputType.emailAddress,
                  textEditingController: TextEditingController(),
                  onChanged: (value) {},
                ),
              
              const AddHeight(0.03),
               DeafTextFormField(
                  fillColorWhite: false,
                  removePrefixPadding: true,
                  showErrorBorder: false,
                  isPassword: true,
                  label: "Password",
                  prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 3.0),
                      child: Icon(
                        Icons.lock_outline,
                        color: DesignConstants.kTextFieldBorderColor,
                      )),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: DesignConstants.kTextFieldBorderColor,
                  ),
                  showFocusedBorder: false,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: DesignConstants.kTextFieldBorderColor,
                    ),
                  ),
                  textInputType: TextInputType.emailAddress,
                  textEditingController: TextEditingController(),
                  onChanged: (value) {},
                ),
              
              const AddHeight(0.025),
              GestureDetector(
                onTap: () {
                  AppNavigation.navigateTo(AppRoutesNames.forgortPassword);
                },
                child: Text(
                  "Forget Password?",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: DesignConstants.kPrimaryColor),
                ),
              ),
              const AddHeight(0.025),
              Hero(
                tag: "auth",
                child: GestureDetector(
                  onTap: () {
                    AppNavigation.navigateTo(AppRoutesNames.homeScreen);
                  },
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: DesignConstants.kPrimaryColor,
                        borderRadius: BorderRadius.circular(14.0)),
                    child: Text(
                      "Sign In?",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: DesignConstants.kWhiteColor),
                    ),
                  ),
                ),
              ),
              const AddHeight(0.045),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Don’t have an account? ",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: DesignConstants.kBlackColor),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        AppNavigation.navigateTo(AppRoutesNames.signUp);
                      },
                    text: 'Sign Up',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: DesignConstants.kPrimaryColor,
                    ),
                  ),
                ]),
              ),
              const AddHeight(0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: 40,
                    color: DesignConstants.kTextFieldBorderColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Or sign in with",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: DesignConstants.kBlackColor),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 2,
                    width: 40,
                    color: DesignConstants.kTextFieldBorderColor,
                  ),
                ],
              ),
              const AddHeight(0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: DeafAssetImage(imagePath: AppImages.facebookIcon),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: DeafAssetImage(imagePath: AppImages.googleIcon),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
