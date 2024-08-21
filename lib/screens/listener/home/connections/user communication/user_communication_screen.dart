import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/custom_scaffold.dart';
import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserCommunictionScreen extends StatelessWidget {
  const UserCommunictionScreen({super.key});

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
                        color: DesignConstants.kButtonBg2,
                      ),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Users",
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
                            width: 1, color: DesignConstants.kButtonBg2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Hero(
                          tag: "userCommunication",
                          child: Text("Search User",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: DesignConstants.kLighGreyColor)),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: DesignConstants.kPrimaryColor2,
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
                  Text("Added Me",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontWeight: FontWeight.w700,
                              color: DesignConstants.kTextFieldLabelColor,
                              fontSize: 14)),
                  const AddHeight(0.01),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: DesignConstants.kButtonBg2),
                        borderRadius: BorderRadius.circular(14.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          onTap: () {
                            AppNavigation.navigateTo(AppRoutesNames.listenerChatScreen);
                          },
                          dense: true,
                          leading: const CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                          ),
                          title: Text("Alexander",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13)),
                          subtitle: Text("alexander_rr",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11)),
                          trailing: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  height: 24,
                                  width: 24,
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: DesignConstants.kButtonBg2),
                                  child: DeafAssetImage(
                                      imagePath: AppImages.listenerSmallIcon)),
                              const SizedBox(
                                width: 8.0,
                              ),
                              DeafAssetImage(
                                imagePath: AppImages.listenerMessagesIcon,
                                height: 24,
                                width: 24,
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 1,
                          color: DesignConstants.kButtonBg2,
                        ),
                        ListTile(
                          onTap: () {
                            AppNavigation.navigateTo(AppRoutesNames.listenerChatScreen);
                          },
                          dense: true,
                          leading: const CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                          ),
                          title: Text("Alexander",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13)),
                          subtitle: Text("alexander_rr",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11)),
                          trailing: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  height: 24,
                                  width: 24,
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: DesignConstants.kButtonBg2),
                                  child: DeafAssetImage(
                                      imagePath: AppImages.deafIcon)),
                              const SizedBox(
                                width: 8.0,
                              ),
                              DeafAssetImage(
                                imagePath: AppImages.listenerMessagesIcon,
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          height: 1,
                          color: DesignConstants.kButtonBg2,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          child: Text("View All",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color:
                                          DesignConstants.kTextFieldLabelColor,
                                      fontSize: 12)),
                        )
                      ],
                    ),
                  ),
                  const AddHeight(0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Users",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: DesignConstants.kTextFieldLabelColor,
                                  fontSize: 14)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("All Users",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color:
                                          DesignConstants.kTextFieldLabelColor,
                                      fontSize: 14)),
                          const Icon(Icons.arrow_forward,
                              size: 18.0,
                              color: DesignConstants.kTextFieldLabelColor)
                        ],
                      ),
                    ],
                  ),
                  const AddHeight(0.01),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: DesignConstants.kButtonBg2),
                        borderRadius: BorderRadius.circular(14.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         ListTile(
                          onTap: () {
                            AppNavigation.navigateTo(AppRoutesNames.listenerChatScreen);
                          },
                          dense: true,
                          leading: const CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                          ),
                          title: Text("Alexander",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13)),
                          subtitle: Text("alexander_rr",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11)),
                          trailing: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  height: 24,
                                  width: 24,
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: DesignConstants.kButtonBg2),
                                  child: DeafAssetImage(
                                      imagePath: AppImages.deafIcon)),
                              const SizedBox(
                                width: 8.0,
                              ),
                              DeafAssetImage(
                                imagePath: AppImages.listenerMessagesIcon,
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        ),
                       
                        const Divider(
                          height: 1,
                          color: DesignConstants.kButtonBg2,
                        ),
                         ListTile(
                          onTap: () {
                            AppNavigation.navigateTo(AppRoutesNames.listenerChatScreen);
                          },
                          dense: true,
                          leading: const CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                          ),
                          title: Text("Alexander",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13)),
                          subtitle: Text("alexander_rr",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11)),
                          trailing: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  height: 24,
                                  width: 24,
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: DesignConstants.kButtonBg2),
                                  child: DeafAssetImage(
                                      imagePath: AppImages.deafIcon)),
                              const SizedBox(
                                width: 8.0,
                              ),
                              DeafAssetImage(
                                imagePath: AppImages.listenerMessagesIcon,
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        ),
                       
                        const Divider(
                          height: 1,
                          color: DesignConstants.kButtonBg2,
                        ),
                        ListTile(
                          onTap: () {
                            AppNavigation.navigateTo(AppRoutesNames.listenerChatScreen);
                          },
                          dense: true,
                          leading: const CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                          ),
                          title: Text("Alexander",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13)),
                          subtitle: Text("alexander_rr",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11)),
                          trailing: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  height: 24,
                                  width: 24,
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: DesignConstants.kButtonBg2),
                                  child: DeafAssetImage(
                                      imagePath: AppImages.deafIcon)),
                              const SizedBox(
                                width: 8.0,
                              ),
                              DeafAssetImage(
                                imagePath: AppImages.listenerMessagesIcon,
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        ),
                       
                        const Divider(
                          height: 1,
                          color: DesignConstants.kButtonBg2,
                        ),
                       ListTile(
                          onTap: () {
                            AppNavigation.navigateTo(AppRoutesNames.listenerChatScreen);
                          },
                          dense: true,
                          leading: const CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                          ),
                          title: Text("Alexander",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13)),
                          subtitle: Text("alexander_rr",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11)),
                          trailing: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  height: 24,
                                  width: 24,
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: DesignConstants.kButtonBg2),
                                  child: DeafAssetImage(
                                      imagePath: AppImages.deafIcon)),
                              const SizedBox(
                                width: 8.0,
                              ),
                              DeafAssetImage(
                                imagePath: AppImages.listenerMessagesIcon,
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        ),
                       
                        const Divider(
                          height: 1,
                          color: DesignConstants.kButtonBg2,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          child: Text("View All",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color:
                                          DesignConstants.kTextFieldLabelColor,
                                      fontSize: 12)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
