import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/generic_widgets/textfield/deaf_text_form_field.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPairsScreen extends StatelessWidget {
  const EditPairsScreen({super.key});

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
                    "Edit",
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
                  const AddHeight(0.02),
                  DeafTextFormField(
                    fillColorWhite: false,
                    removePrefixPadding: true,
                    showErrorBorder: false,
                    isPassword: true,
                    label: "Enter Sentence",
                    maxLines: 10,
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
                  const AddHeight(0.02),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: ListTile(
                      onTap: () {},
                      title: Text(
                        "Audio Recording 1",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: DesignConstants.kTextFieldLabelColor),
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
                            Icons.restart_alt,
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
                      onTap: () {},
                      title: Text(
                        "Audio Recording 1",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: DesignConstants.kTextFieldLabelColor),
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
                            Icons.restart_alt,
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
                      onTap: () {},
                      title: Text(
                        "Audio Recording 1",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: DesignConstants.kTextFieldLabelColor),
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
                            Icons.restart_alt,
                            size: 18,
                            color: DesignConstants.kLightGreyColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const AddHeight(0.03),
                  Text(
                    "Paired Number",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 14),
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
                          AppRoutesNames.textToSpeechScreen),
                      title: Text(
                        "Paired Number: 664",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: DesignConstants.kTextFieldLabelColor),
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
