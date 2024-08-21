import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmergencyCommunicationScreen extends StatelessWidget {
  const EmergencyCommunicationScreen({super.key});

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
                  Text(
                    "Select Emergency Type",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: DesignConstants.kTextFieldLabelColor),
                  ),
                  const AddHeight(0.01),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: DesignConstants.khomeBorder.withOpacity(0.3),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: ListTile(
                      onTap: () {},
                      leading: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                                width: 1,
                                color: DesignConstants.kTextFieldBorderColor)),
                      ),
                      title: Text(
                        "Fire",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: DesignConstants.kTextFieldLabelColor),
                      ),
                    ),
                  ),
                  const AddHeight(0.01),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: DesignConstants.khomeBorder.withOpacity(0.3),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: ListTile(
                      onTap: () {},
                      leading: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                                width: 1,
                                color: DesignConstants.kTextFieldBorderColor)),
                      ),
                      title: Text(
                        "Crime",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: DesignConstants.kTextFieldLabelColor),
                      ),
                    ),
                  ),
                  const AddHeight(0.01),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: DesignConstants.khomeBorder.withOpacity(0.3),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: ListTile(
                      onTap: () {},
                      leading: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                                width: 1,
                                color: DesignConstants.kTextFieldBorderColor)),
                      ),
                      title: Text(
                        "Health",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: DesignConstants.kTextFieldLabelColor),
                      ),
                    ),
                  ),
                  const AddHeight(0.01),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: DesignConstants.khomeBorder.withOpacity(0.3),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor)),
                    child: ListTile(
                      onTap: () {},
                      leading: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                                width: 1,
                                color: DesignConstants.kTextFieldBorderColor)),
                      ),
                      title: Text(
                        "Report / Witness",
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
          onTap: () => AppNavigation.navigateTo(
              AppRoutesNames.emergencyContactAddDetailspscreen),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: SizedBox()),
              Hero(
                tag: "sentenceTag",
                child: Text("Next",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: DesignConstants.kWhiteColor)),
              ),
              Expanded(child: SizedBox()),
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
