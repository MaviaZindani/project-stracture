import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/utils/helper_functions.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BroadCastWithTimeLimitScreen extends StatelessWidget {
  const BroadCastWithTimeLimitScreen({super.key});

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
                  Hero(
                    tag: "broadCastHeading",
                    child: Text("Broadcast",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 24)),
                  ),
                  const AddHeight(0.006),
                  Text(
                      "You can choose to broadcast your availability for a specific duration.",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 14)),
                  const AddHeight(0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          BottomSheetsAndDialogs.showCupertinoPicker(context);
                        },
                        child: Container(
                          height: 60,
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: DesignConstants.kTextFieldBorderColor),
                              borderRadius: BorderRadius.circular(14.0)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(child: SizedBox()),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: RotatedBox(
                                    quarterTurns: 3,
                                    child: Icon(Icons.arrow_back_ios)),
                              )
                            ],
                          ),
                        ),
                      )),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          BottomSheetsAndDialogs.showCupertinoPicker(context);
                        },
                        child: Container(
                          height: 60,
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: DesignConstants.kTextFieldBorderColor),
                              borderRadius: BorderRadius.circular(14.0)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(child: SizedBox()),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: RotatedBox(
                                    quarterTurns: 3,
                                    child: Icon(Icons.arrow_back_ios)),
                              )
                            ],
                          ),
                        ),
                      )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () =>AppNavigation.navigateTo(
            AppRoutesNames.broadCastWithTimeLimitUsersScreen),
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
