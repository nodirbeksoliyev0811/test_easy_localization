import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/icons.dart';
import '../../Account/account_screen.dart';
import '../../Profile/profile_screen.dart';
import '../../about/about_screen.dart';
import '../../setting/setting_screen.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key, required this.title, required this.icon});

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(width * 5 / 375),
      child: ListTile(
        onTap: () {
          title == "Profile"
              ? Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ProfileScreen();
                    },
                  ),
                )
              : title == "Account"
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AccountScreen();
                        },
                      ),
                    )
                  : title == "Setting"
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const SettingScreen();
                            },
                          ),
                        )
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const AboutScreen();
                            },
                          ),
                        );
        },
        leading: Container(
          height: width * 40 / 375,
          width: width * 40 / 375,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.cDCF0F9,
          ),
          child: Padding(
            padding: EdgeInsets.all(width * 11 / 375),
            child: SvgPicture.asset(icon),
          ),
        ),
        title: Text(
          tr(title),
          style: TextStyle(
            fontSize: width * 15 / 375,
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
          ),
        ),
        trailing: SvgPicture.asset(AppImages.nextArrow),
      ),
    );
  }
}
