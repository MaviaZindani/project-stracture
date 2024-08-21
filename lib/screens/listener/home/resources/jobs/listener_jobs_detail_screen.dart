import 'package:deaf_app/generic_widgets/screen_widgets/listener_custom_scaffol.dart';
import 'package:flutter/material.dart';
import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:google_fonts/google_fonts.dart';

class ListenerJobDetailScreen extends StatelessWidget {
  const ListenerJobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenerCustomScaffold(
      isDark: true,
      body: SafeArea(
        child: Column(
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
                        color: DesignConstants.kButtonBg2,
                      ),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Jobs",
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
            const AddHeight(0.04),
            ScreenPadding(
              child: Column(
                children: [
                  const AddHeight(0.02),
                  Container(
                    // height: 111,
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        vertical: 18.0, horizontal: 12.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                        border: Border.all(
                            width: 1, color: DesignConstants.kButtonBg2)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Assistant Accountant",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: DesignConstants.kBlackColor),
                        ),
                        Text(
                          'United States',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: DesignConstants.kPrimaryColor2,
                          ),
                        ),
                        const AddHeight(0.01),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker.",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w400, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {},
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
            child: Text(
              "Apply Now",
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: DesignConstants.kWhiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
