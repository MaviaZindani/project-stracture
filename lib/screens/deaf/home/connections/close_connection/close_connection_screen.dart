import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/screens/deaf/home/connections/broadcast/widgets/broadcast_user_tile.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CloseConnectionScreen extends StatelessWidget {
  const CloseConnectionScreen({super.key});

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
                    width: 10.0,
                  ),
                  Text(
                    "Close Connection",
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
                        Hero(
                          tag: "closeConnection",
                          child: Text(
                            "Search User...",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: DesignConstants.kLighGreyColor),
                          ),
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
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kTextFieldBorderColor),
                        borderRadius: BorderRadius.circular(14.0)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BroadCastUserTile(),
                        Divider(
                          height: 1,
                          color: DesignConstants.kTextFieldBorderColor,
                        ),
                        BroadCastUserTile(),
                        Divider(
                          height: 1,
                          color: DesignConstants.kTextFieldBorderColor,
                        ),
                        BroadCastUserTile(),
                        Divider(
                          height: 1,
                          color: DesignConstants.kTextFieldBorderColor,
                        ),
                        BroadCastUserTile(),
                        Divider(
                          height: 1,
                          color: DesignConstants.kTextFieldBorderColor,
                        ),
                        BroadCastUserTile(),
                        Divider(
                          height: 1,
                          color: DesignConstants.kTextFieldBorderColor,
                        ),
                        BroadCastUserTile(),
                        Divider(
                          height: 1,
                          color: DesignConstants.kTextFieldBorderColor,
                        ),
                        BroadCastUserTile(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          height: 60,
          width: double.maxFinite,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          margin: const EdgeInsets.symmetric(
            horizontal: 36,
          ),
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1, color: DesignConstants.kPrimaryColor),
              borderRadius: BorderRadius.circular(14.0)),
          child: Text(
            "User Search on Map",
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: DesignConstants.kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
