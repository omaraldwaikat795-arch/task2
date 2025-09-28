import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/core/presntaions/custom_button.dart';

class CustomWedgetScreen extends StatefulWidget {
  const CustomWedgetScreen({super.key});

  @override
  State<CustomWedgetScreen> createState() => _CustomWedgetScreenState();
}

class _CustomWedgetScreenState extends State<CustomWedgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen widget"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 20),
        child: Column(
          children: [
            CustomButton(
              buttonText: "hello".tr(),
              color: Colors.blue,
              ontap: () {
                if (context.locale == Locale('ar')) {
                  context.setLocale(Locale('en'));
                } else {
                  context.setLocale(Locale('ar'));
                }
                print("object");
              },
            ),
            // CustomButton(
            //   buttonText: "hello".tr(),
            //   color: Colors.blue,
            //   ontap: () {
            //     print("object");
                //context.setLocale(Locale('en'));
             // },
            //),
          ],
        ),
      ),
    );
  }
}
