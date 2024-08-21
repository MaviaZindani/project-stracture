import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/listener_custom_scaffol.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/generic_widgets/textfield/deaf_text_form_field.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/view_profile_widget.dart';

class ListenerViewProfileDataScreen extends StatelessWidget {
  const ListenerViewProfileDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenerCustomScaffold(
      isDark: true,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
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
                          color: DesignConstants.kButtonBg2,
                        ),
                        child: const Icon(Icons.arrow_back),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      "Profile Data",
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
              TabBar(
                tabs: const [
                  Tab(text: 'Home'),
                  Tab(text: 'Favorites'),
                ],
                indicator: const BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          width: 1, color: DesignConstants.kPrimaryColor2)),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                labelStyle: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 12),
                unselectedLabelStyle: GoogleFonts.nunito(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                dividerColor: Colors.transparent,
              ),
              // SizedBox(
              //     height: 50,
              //     child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           Expanded(
              //               child: Container(
              //             width: double.maxFinite,
              //             height: double.maxFinite,
              //             alignment: Alignment.center,
              //             decoration: const BoxDecoration(
              //                 border: Border(
              //                     top: BorderSide(
              //                         width: 1,
              //                         color: Color.fromRGBO(136, 0, 21, 1)))),
              //             child: Text(
              //               "General",
              //               style: GoogleFonts.nunito(
              //                   fontWeight: FontWeight.w700, fontSize: 12),
              //             ),
              //           )),
              //           Expanded(
              //               child: Container(
              //             height: double.maxFinite,
              //             width: double.maxFinite,
              //             alignment: Alignment.center,
              //             color: DesignConstants.kButtonBg,
              //             child: Text(
              //               "Password",
              //               style: GoogleFonts.nunito(
              //                   fontWeight: FontWeight.w400, fontSize: 12),
              //             ),
              //           ))
              //         ])),
              Expanded(
                child: TabBarView(children: [
                  const ViewProfileWidget(),
                  ScreenPadding(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        DeafTextFormField(
                          fillColorWhite: false,
                          removePrefixPadding: false,
                          isSecure: true,
                          showErrorBorder: false,
                          label: "Current Password",
                          suffixIcon: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: DesignConstants.kButtonBg2,
                          ),
                          showFocusedBorder: false,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                              color: DesignConstants.kButtonBg2,
                            ),
                          ),
                          textInputType: TextInputType.name,
                          textEditingController: TextEditingController(),
                          onChanged: (value) {},
                        ),
                        const AddHeight(0.015),
                        DeafTextFormField(
                          fillColorWhite: false,
                          removePrefixPadding: false,
                          showErrorBorder: false,
                          label: "Current Password",
                          showFocusedBorder: false,
                          isSecure: true,
                          suffixIcon: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: DesignConstants.kButtonBg2,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                              color: DesignConstants.kButtonBg2,
                            ),
                          ),
                          textInputType: TextInputType.name,
                          textEditingController: TextEditingController(),
                          onChanged: (value) {},
                        ),
                        const AddHeight(0.015),
                        DeafTextFormField(
                          fillColorWhite: false,
                          removePrefixPadding: false,
                          showErrorBorder: false,
                          label: "Current Password",
                          showFocusedBorder: false,
                          isSecure: true,
                          suffixIcon: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: DesignConstants.kButtonBg2,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                              color: DesignConstants.kButtonBg2,
                            ),
                          ),
                          textInputType: TextInputType.name,
                          textEditingController: TextEditingController(),
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
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
