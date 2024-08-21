import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:flutter/material.dart';

class ListenerBroadCastUserTile extends StatelessWidget {
  final bool isPrimary = false;
  const ListenerBroadCastUserTile({isPrimary = false, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
              .copyWith(fontWeight: FontWeight.w700, fontSize: 13)),
      subtitle: Text("alexander_rr",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontWeight: FontWeight.w400, fontSize: 11)),
      trailing: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              height: 34,
              width: 34,
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: DesignConstants.kListenerCircleColor),
              child: DeafAssetImage(imagePath: AppImages.listenerSmallIcon)),
          const SizedBox(
            width: 8.0,
          ),
          Container(
            height: 24,
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: isPrimary
                    ? DesignConstants.kPrimaryColor2
                    : DesignConstants.kGreenSubmitColor,
                borderRadius: BorderRadius.circular(20.0)),
            child: Text("Select",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 12)),
          )
        ],
      ),
    );
  }
}
