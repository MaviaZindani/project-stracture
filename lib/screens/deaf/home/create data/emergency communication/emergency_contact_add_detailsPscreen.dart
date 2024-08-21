import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../generic_widgets/textfield/deaf_text_form_field.dart';

class EmergencyContactAddDetailspscreen extends StatelessWidget {
  const EmergencyContactAddDetailspscreen({super.key});

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
                    "Emergency Communication",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Pre-recorded Speech",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: DesignConstants.kTextFieldLabelColor),
                      ),
                      const Icon(
                        Icons.edit,
                        size: 15,
                        color: DesignConstants.kTextFieldLabelColor,
                      )
                    ],
                  ),
                  const AddHeight(0.01),
                  DeafTextFormField(
                    fillColorWhite: false,
                    removePrefixPadding: true,
                    showErrorBorder: false,
                    isPassword: true,
                    maxLines: 10,
                    // label: "Pre-recorded Speech",
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
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
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
        child: InkWell(
          onTap: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: "sentenceTag",
                child: Text("Save",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: DesignConstants.kWhiteColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
