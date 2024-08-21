import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/listener_custom_scaffol.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetCommunicationScreen extends StatelessWidget {
  const SetCommunicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenerCustomScaffold(
      body: ScreenPadding(
          child: SafeArea(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AddHeight(0.02),
          Row(
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
                    color: DesignConstants.kButtonBg2,
                  ),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Text(
                "Set Communication Language",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ],
          ),
          const AddHeight(0.015),
          const Divider(
            height: 1,
            color: DesignConstants.kAppBarDividerColor,
          ),
          const AddHeight(0.02),
          Text(
            "Add Profile Data",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 22),
            textAlign: TextAlign.center,
          ),
          const AddHeight(0.015),
          Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kButtonBg2)),
                    child: ListTile(
                      onTap: () {},
                      title: Text(
                        "English",
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
                          const SizedBox(
                            width: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: RotatedBox(
                                      quarterTurns: 3,
                                      child: Icon(Icons.arrow_back_ios)),
                          )
                          
                        ],
                      ),
                    ),
                  ),
                  
        ],
      ))),
      floatingActionButton: Container(
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
            DeafAssetImage(imagePath: AppImages.editIcon),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Edit Profile",
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: DesignConstants.kWhiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
