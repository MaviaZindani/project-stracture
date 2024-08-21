import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/screens/deaf/home/connections/widgets/connection_tile.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../const/design_const.dart';
import '../../../../generic_widgets/screen_widgets/custom_scaffold.dart';
import '../../../../generic_widgets/screen_widgets/screen_padding.dart';
import '../../../../routing/app_navigator.dart';
import '../../../../utils/helper_widgets/add_height.dart';  

class ConnectionsScreen extends StatelessWidget {
  const ConnectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
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
                          color: DesignConstants.kButtonBg,
                        ),
                        child: const Icon(Icons.arrow_back),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Resources",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    AppNavigation.goBack();
                  },
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: DesignConstants.kPrimaryColor,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
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
                          image: AssetImage(AppImages.resourcesCover),
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
                          color: DesignConstants.kresourcesBorderColor)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Text(
                          "Connections",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                      ),
                      const AddHeight(0.018),
                      Hero(
                        tag: "connectUserHeading",
                        child: ConnectionTile(
                            tileName: "Connect to a Receiver",
                            onTap: () => AppNavigation.navigateTo(
                                AppRoutesNames.connectUserScreen)),
                      ),
                      const AddHeight(0.018),
                      Hero(
                        tag: "broadcast",
                        child: ConnectionTile(
                            tileName: "Broadcast Connections",
                            onTap: () => AppNavigation.navigateTo(
                                AppRoutesNames.broadCastConnectionsScreen)),
                      ),
                      const AddHeight(0.018),
                      Hero(
                        tag: "removeUser",
                        child: ConnectionTile(
                            tileName: "Remove a Receiver",
                            onTap: () => AppNavigation.navigateTo(
                                AppRoutesNames.removeUserScreen)),
                      ),
                      const AddHeight(0.018),
                      Hero(
                        tag: "closeConnection",
                        child: ConnectionTile(
                            tileName: "Close Connections",
                            onTap: () => AppNavigation.navigateTo(
                                AppRoutesNames.closeConnectionScreen)),
                      ),
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
