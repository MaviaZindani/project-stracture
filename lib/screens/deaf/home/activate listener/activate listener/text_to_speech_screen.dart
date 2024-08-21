import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/generic_widgets/textfield/deaf_text_form_field.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextToSpeechScreen extends StatelessWidget {
  const TextToSpeechScreen({super.key});

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
                    "Text to Speech",
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
                  DeafTextFormField(
                    fillColorWhite: false,
                    removePrefixPadding: true,
                    showErrorBorder: false,
                    isPassword: true,
                    label: "Speech",
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
                  DeafTextFormField(
                    fillColorWhite: false,
                    removePrefixPadding: true,
                    showErrorBorder: false,
                    isPassword: true,
                    label: "Paired Number",
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 38,
                        width: 38,
                        decoration: const BoxDecoration(
                          color: DesignConstants.kCircleLightColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.mic,
                            color: DesignConstants.kTextFieldLabelColor
                                .withOpacity(0.5)),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: DesignConstants.kCircleLightColor,
                            shape: BoxShape.circle),
                        child: Icon(Icons.volume_up,
                            color: DesignConstants.kTextFieldLabelColor
                                .withOpacity(0.5)),
                      ),
                    ],
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
