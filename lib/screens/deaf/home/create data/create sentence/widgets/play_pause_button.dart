import 'package:deaf_app/const/design_const.dart';
import 'package:flutter/material.dart';

class PlayPauseButton extends StatelessWidget {
  const PlayPauseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 220,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: DesignConstants.kSecondaryColor.withOpacity(0.1),
          shape: BoxShape.circle),
      child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: DesignConstants.kSecondaryColor.withOpacity(0.2),
            shape: BoxShape.circle),
        child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: DesignConstants.kSecondaryColor.withOpacity(0.3),
                shape: BoxShape.circle),
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: DesignConstants.kPrimaryColor,
              ),
              child: const Icon(
                Icons.mic,
                size: 60,
                color: DesignConstants.kPlayBtnLightColor,
              ),
            )),
      ),
    );
  }
}
