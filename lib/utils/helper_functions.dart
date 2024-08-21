import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetsAndDialogs {
  static void showCupertinoPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    AppNavigation.goBack();
                  },
                  child: const Icon(Icons.cancel))
            ],
          ),
          content: SizedBox(
            height: 150,
            child: CupertinoPicker(
              itemExtent: 45.0,
              onSelectedItemChanged: (int newTime) {},
              children: List<Widget>.generate(10, (int index) {
                return Center(
                  child: Text('${index + 1} hour'),
                );
              }),
            ),
          ),
        );
      },
    );
  }

  static void showConguratsDialog(BuildContext context,
      {required String title, required String subTitle}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  AppNavigation.goBack();
                },
                child: Text("X",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                        )),
              )
            ],
          ),
          content: SizedBox(
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DeafAssetImage(imagePath: AppImages.congratsIcon),
                  const AddHeight(0.01),
                  Text("Sentence with audio saved!",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              )),
                  const AddHeight(0.01),
                  Text("Sentence with audio has been saved successfully.",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              )),
                ],
              )),
        );
      },
    );
  }
}
