import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ConnectionTile extends StatelessWidget {
  String tileName;
  VoidCallback onTap;
  ConnectionTile({required this.tileName, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  tileName,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const AddHeight(0.018),
          const Divider(
            height: 1,
            color: DesignConstants.kButtonBg2,
          ),
        ],
      ),
    );
  }
}
