import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/screens/deaf/home/connections/broadcast/widgets/broadcast_user_tile.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BroadCastWithTimeLimitUsersScreen extends StatelessWidget {
  const BroadCastWithTimeLimitUsersScreen({super.key});

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
                    "Broadcast with Time Limit",
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
                  const AddHeight(0.015),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: "broadCastHeading",
                        child: Text("Broadcast Time",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 16)),
                      ),
                      Text("Time Left: 03:30:00",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 16)),
                    ],
                  ),
                  const AddHeight(0.015),
                  const Divider(
                    height: 1,
                    color: DesignConstants.kAppBarDividerColor,
                  ),
                  const AddHeight(0.02),
                  Text("Broadcast to select users for the limited time chosen.",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 14)),
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
              color: DesignConstants.kPrimaryColor,
              borderRadius: BorderRadius.circular(14.0)),
          child: Text(
            "Next",
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: DesignConstants.kWhiteColor),
          ),
        ),
      ),
    );
  }
}
