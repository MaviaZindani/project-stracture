import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/listener_custom_scaffol.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../generic_widgets/screen_widgets/custom_scaffold.dart';

class ListenerGovermentSourcesDetailScreen extends StatelessWidget {
  const ListenerGovermentSourcesDetailScreen({super.key});

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
                  "Government Sources",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: DesignConstants.kAppBarDividerColor,
          ),
          const AddHeight(0.04),
          ScreenPadding(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 102,
                    width: 102,
                    child: DeafAssetImage(imagePath: AppImages.tempLogo)),
                const AddHeight(0.01),
                Text(
                  "National Association of the Deaf",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.phone,
                        size: 14, color: DesignConstants.kTextGreyColor),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(202) 651-5150",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: DesignConstants.kTextGreyColor),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.mail,
                        size: 14, color: DesignConstants.kTextGreyColor),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      "info@dbcusa.org",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: DesignConstants.kTextGreyColor),
                    ),
                  ],
                ),
                const AddHeight(0.005),
                ListTile(
                  minLeadingWidth: 0.0,
                  leading: const Icon(Icons.location_on,
                      size: 20, color: DesignConstants.kTextGreyColor),
                  title: Text(
                    "ALDA, Inc 8038 MacIntosh Lane Rockford, IL 61107 USA",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: DesignConstants.kTextGreyColor),
                  ),
                ),
                const AddHeight(0.01),
                Text(
                  "The National Association of the Deaf (NAD) is an organization for the promotion of the rights of deaf people in the United States. NAD was founded in Cincinnati, Ohio, in 1880 as a non-profit organization run by Deaf people to advocate for deaf rights, its first president being Robert P. McGregor of Ohio. It includes associations from all 50 states and Washington, DC, and is the US member of the World Federation of the Deaf, which has over 120 national associations of Deaf people as members. It has its headquarters in Silver Spring, Maryland. All of its presidents were late-deafened until the 1970s. It is in charge of the Miss Deaf America Ambassador programs, which are held during the association's conventions. It has advocated for deaf rights in all aspects of life, from public transportation to education.",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: DesignConstants.kTextFieldLabelColor),
                )
              ],
            ),
          )
        ],
      )),
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
              "Call Now",
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
