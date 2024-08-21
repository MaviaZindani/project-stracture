import 'package:deaf_app/generic_widgets/screen_widgets/screen_padding.dart';
import 'package:deaf_app/utils/helper_widgets/add_height.dart';
import 'package:flutter/material.dart';

class ViewProfileWidget extends StatelessWidget {
  const ViewProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AddHeight(0.02),
          Text("Full Name",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 12)),
          const AddHeight(0.005),
          Text("James William",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 14)),
          const AddHeight(0.03),
          Text("Email",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 12)),
          const AddHeight(0.005),
          Text("jameswilliam@gmail.com",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 14)),
          const AddHeight(0.03),
          Text("Phone",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 12)),
          const AddHeight(0.005),
          Text("+1 (828) 999-6071",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 14)),
          const AddHeight(0.03),
          Text("Age",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 12)),
          const AddHeight(0.005),
          Text("27 Year",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 14)),
          const AddHeight(0.03),
          Text("Gender",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 12)),
          const AddHeight(0.005),
          Text("Male",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 14)),
          const AddHeight(0.03),
          Text("Address",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 12)),
          const AddHeight(0.005),
          Text("Dawsons Creek Blvd Ste I, Fort Wayne, Iowa, US",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 14)),
          const AddHeight(0.03),
          Text("About me",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 12)),
          const AddHeight(0.005),
          Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500.",
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.w600, fontSize: 14, height: 1.8)),
        ],
      ),
    );
  }
}
