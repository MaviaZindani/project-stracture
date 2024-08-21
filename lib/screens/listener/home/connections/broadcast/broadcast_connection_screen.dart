import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/listener_custom_scaffol.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/screens/deaf/home/connections/widgets/connection_tile.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListenerBroadcastConnectionScreen extends StatelessWidget {
  const ListenerBroadcastConnectionScreen({super.key});

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                      width: 10.0,
                    ),
                    Text(
                      "Broadcast Connections",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
          const AddHeight(0.02),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 126,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.listenerConnectionCover),
                          fit: BoxFit.cover)),
                ),
                Container(
                  // height: height * 0.5,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  margin:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 80.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.0),
                      color: Colors.white,
                      border: Border.all(
                          width: 0.5,
                          color: DesignConstants.kButtonBg2)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Hero(
                          tag: "broadCastHeading",
                          child: Text("Broadcast",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20)),
                        ),
                      ),
                      const AddHeight(0.018),
                      Hero(
                        tag: "broadcast",
                        child: ConnectionTile(
                            tileName: "Broadcast with Time Limit",
                            onTap: () => AppNavigation.navigateTo(
                                AppRoutesNames.listenerBroadCastWithTimeLimitScreen)),
                      ),
                      const AddHeight(0.018),
                      ConnectionTile(
                          tileName: "Broadcast for All Users On", onTap: () {}),
                      const AddHeight(0.05)
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
