import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/icons.dart';
import '../../about/about_us_screen.dart';
import '../setting_language.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ListTile(
          onTap: () {
            title == "About_Us"
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const AboutUsScreen();
                      },
                    ),
                  )
                : title == "App_language"
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MyHomePage(context: context);
                          },
                        ),
                      )
                    : () {};
          },
          title: Padding(
            padding: EdgeInsets.only(left: width * 10 / 375, right: width * 10 / 375),
            child: Text(
              tr(title),
              style: TextStyle(
                  color: AppColors.c0F172A,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: width * 15 / 375),
            ),
          ),
        ),
      ],
    );
  }
}