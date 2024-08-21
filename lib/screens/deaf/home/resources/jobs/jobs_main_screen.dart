import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobMainScreen extends StatelessWidget {
  const JobMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
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
                        color: DesignConstants.kButtonBg,
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
                  Container(
                    height: 54,
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 8.0, top: 5.0, bottom: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kresourcesBorderColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Search Jobs",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 13),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: DesignConstants.kPrimaryColor,
                          ),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
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
                            width: 1,
                            color: DesignConstants.kresourcesBorderColor)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Assistant Accountant - ",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: DesignConstants.kBlackColor),
                                ),
                                TextSpan(
                                  text: 'United States',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: DesignConstants.kPrimaryColor,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                        const AddHeight(0.01),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w400, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  const AddHeight(0.02),
                  GestureDetector(
                    onTap: ()=>AppNavigation.navigateTo(AppRoutesNames.jobsDetailScreen),
                    child: Container(
                      // height: 111,
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 12.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white,
                          border: Border.all(
                              width: 1,
                              color: DesignConstants.kresourcesBorderColor)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "Assistant Accountant - ",
                                    style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: DesignConstants.kBlackColor),
                                  ),
                                  TextSpan(
                                    text: 'United States',
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: DesignConstants.kPrimaryColor,
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                          const AddHeight(0.01),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w400, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                            width: 1,
                            color: DesignConstants.kresourcesBorderColor)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Assistant Accountant - ",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: DesignConstants.kBlackColor),
                                ),
                                TextSpan(
                                  text: 'United States',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: DesignConstants.kPrimaryColor,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                        const AddHeight(0.01),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
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
    );
  }
}
