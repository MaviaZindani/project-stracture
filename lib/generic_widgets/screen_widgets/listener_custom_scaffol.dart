import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:flutter/material.dart';

import '../../utils/screen_helper.dart';

class ListenerCustomScaffold extends StatelessWidget {
  final Widget body;
  final bool isDark;
  final Widget? floatingActionButton;
  const ListenerCustomScaffold(
      {required this.body,
      this.floatingActionButton,
      this.isDark = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    final height = ScreenHelper.getScreenHeight(context);
    final width = ScreenHelper.getScreenWidth(context);
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: DeafAssetImage(
                imagePath: isDark
                    ? AppImages.listenerScreenBottomCircleDark
                    : AppImages.listenerScreenBottomCircle),
          ),
          Container(
              height: height,
              width: width,
              color: Colors.transparent,
              child: body)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: floatingActionButton,
    );
  }
}
