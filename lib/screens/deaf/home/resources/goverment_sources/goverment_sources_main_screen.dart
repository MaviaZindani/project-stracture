import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:deaf_app/utils/helper_widgets/add_width.dart';
import 'package:deaf_app/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../generic_widgets/screen_widgets/custom_scaffold.dart';

class GovermentSourcesMainScreen extends StatelessWidget {
  const GovermentSourcesMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = ScreenHelper.getScreenHeight(context);
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
                  "Government Sources",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ],
            ),
          ),
          const AddHeight(0.02),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 189,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.govermentSources),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 80.0,
                    left: 30.0,
                    right: 30.0,
                  ),
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
                              "Search Organization",
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
                        height: height * 0.5,
                        width: double.maxFinite,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 24.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28.0),
                            color: Colors.white,
                            border: Border.all(
                                width: 0.5,
                                color: DesignConstants.kresourcesBorderColor)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AddHeight(0.02),
                            GestureDetector(
                              onTap: (){
                                AppNavigation.navigateTo(AppRoutesNames.govermentSourcesDetailScreen);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 44,
                                        width: 44,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                                width: 1,
                                                color: DesignConstants
                                                    .kresourcesBorderColor)),
                                      ),
                                      const AddWidth(0.02),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "National Association of the Deaf",
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 13),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.phone,
                                                size: 14,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "(202) 651-5150",
                                                style: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 13),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Icon(
                                                Icons.location_on_outlined,
                                                size: 14,
                                              ),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                              Text(
                                                "United States",
                                                style: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const AddHeight(0.015),
                                  const Divider(
                                    height: 1,
                                    color: DesignConstants.kresourcesBorderColor,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
