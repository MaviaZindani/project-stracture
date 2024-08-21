import 'package:deaf_app/const/design_const.dart';
import 'package:deaf_app/generic_widgets/image/deaf_asset_image.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_names.dart';
import 'package:deaf_app/services/app_images.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../generic_widgets/textfield/listener_text_form_field.dart';

class ListenerConfirmNumberScreen extends StatelessWidget {
  const ListenerConfirmNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: double.maxFinite,
            child: Stack(
              children: [
                DeafAssetImage(imagePath: AppImages.listenerTopCircle),
                Positioned(
                    left: 28.0,
                    top: 60.0,
                    child: GestureDetector(
                      onTap: () => AppNavigation.goBack(),
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: DesignConstants.kButtonBg2,
                        ),
                        child: const Icon(Icons.arrow_back),
                      ),
                    )
                    )
             
              ],
            ),
          ),
          const AddHeight(0.1),
          Text(
            "Confirm Your Number",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          const AddHeight(0.005),
          Text(
            "Enter the code  we sent to the number ending",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          Text(
            "0800",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 14),
          ),
          const AddHeight(0.03),

           Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListenerTextFormField(
                  fillColorWhite: false,
                  isOtpField: true,
                  removePrefixPadding: false,
                  showErrorBorder: false,
                  // label: "Phone",
                  showFocusedBorder: false,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: DesignConstants.kDividerColor,
                    ),
                  ),
                  textInputType: TextInputType.name,
                  textEditingController: TextEditingController(),
                  onChanged: (value) {},
                ),
                const SizedBox(width: 12,),
                ListenerTextFormField(
                  fillColorWhite: false,
                  isOtpField: true,
                  removePrefixPadding: false,
                  showErrorBorder: false,
                  // label: "Phone",
                  showFocusedBorder: false,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: DesignConstants.kDividerColor,
                    ),
                  ),
                  textInputType: TextInputType.name,
                  textEditingController: TextEditingController(),
                  onChanged: (value) {},
                ),
                const SizedBox(width: 12,),
                ListenerTextFormField(
                  fillColorWhite: false,
                  isOtpField: true,
                  removePrefixPadding: false,
                  showErrorBorder: false,
                  // label: "Phone",
                  showFocusedBorder: false,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: DesignConstants.kDividerColor,
                    ),
                  ),
                  textInputType: TextInputType.name,
                  textEditingController: TextEditingController(),
                  onChanged: (value) {},
                ),
                const SizedBox(width: 12,),
                ListenerTextFormField(
                  fillColorWhite: false,
                  isOtpField: true,
                  removePrefixPadding: false,
                  showErrorBorder: false,
                  // label: "Phone",
                  showFocusedBorder: false,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: DesignConstants.kDividerColor,
                    ),
                  ),
                  textInputType: TextInputType.name,
                  textEditingController: TextEditingController(),
                  onChanged: (value) {},
                ),
              ],
            
          ),
          const AddHeight(0.03),
          Text(
            "Code will expire within 60 seconds",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          const AddHeight(0.03),
          Text(
            "Send code again",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 14, color: DesignConstants.kPrimaryColor2),
          ),
        ],
      ),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          AppNavigation.navigateTo(AppRoutesNames.listenerChangePasswordScreen);
        },
        child: Hero(
          tag: "auth",
          child: Container(
            height: 60,
            width: double.maxFinite,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            margin: const EdgeInsets.symmetric(
              horizontal: 36,
            ),
            decoration: BoxDecoration(
                color: DesignConstants.kPrimaryColor2,
                borderRadius: BorderRadius.circular(14.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(child: SizedBox()),
                Text(
                  "Next",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: DesignConstants.kWhiteColor),
                ),
                const Expanded(child: SizedBox()),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
   
    );
  }
}