import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_easy_localization/ui/home/widgets/home_widget.dart';

import '../../utils/colors.dart';
import '../../utils/icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        toolbarHeight: width * 50 / 375,
        title: Row(
          children: [
            const Spacer(),
            SvgPicture.asset(
              AppImages.study,
              width: width * 24 / 375,
              height: width * 24 / 375,
            ),
            SizedBox(width: width * 8 / 375),
            Text(
              tr("Study"),
              style: TextStyle(
                  color: AppColors.c0F172A,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: width * 15 / 375),
            ),
            const Spacer()
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: width * 24 / 375,
              right: width * 24 / 375,
              bottom: width * 15 / 375,
            ),
            child: const Divider(height: 2, color: AppColors.cF1F5F9),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 14 / 375, right: width * 24 / 375),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppImages.user,
                  height: width * 58 / 375,
                  width: width * 58 / 375,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tr("Welcome"),
                      style: TextStyle(
                          color: AppColors.c64748B,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: width * 15 / 375),
                    ),
                    Text(tr("Marvin McKinney"),
                        style: TextStyle(
                            color: AppColors.c0F172A,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: width * 17 / 375)),
                  ],
                ),
                const Spacer(),
                TextButton(
                  style: TextButton.styleFrom(shape: const CircleBorder()),
                  onPressed: () {},
                  child: Container(
                    height: width * 40 / 375,
                    width: width * 40 / 375,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.cF1F5F9,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 12 / 375),
                      child: SvgPicture.asset(AppImages.logOut),
                    ),
                  ),
                ),
              ],
            ),
            // ListTile(
            //   leading: Image.asset(
            //     AppImages.user,
            //     height: width * 58 / 375,
            //     width: width * 58 / 375,
            //   ),
            //   title: Text(
            //     tr("Welcome"),
            //     style: TextStyle(
            //         color: AppColors.c64748B,
            //         fontFamily: "Poppins",
            //         fontWeight: FontWeight.w400,
            //         fontSize: width * 15 / 375),
            //   ),
            //   subtitle: Text(tr("Marvin McKinney"),
            //       style: TextStyle(
            //           color: AppColors.c0F172A,
            //           fontFamily: "Poppins",
            //           fontWeight: FontWeight.w600,
            //           fontSize: width * 17 / 375)),
            //   trailing: TextButton(
            //     style: TextButton.styleFrom(shape: const CircleBorder()),
            //     onPressed: () {},
            //     child: Container(
            //       height: width * 40 / 375,
            //       width: width * 40 / 375,
            //       decoration: const BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: AppColors.cF1F5F9,
            //       ),
            //       child: Padding(
            //         padding: EdgeInsets.all(width * 12 / 375),
            //         child: SvgPicture.asset(AppImages.logOut),
            //       ),
            //     ),
            //   ),
            // ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width * 24 / 375,
              right: width * 24 / 375,
              top: width * 20 / 375,
              bottom: width * 15 / 375,
            ),
            child: const Divider(height: 1, color: AppColors.cF1F5F9),
          ),
          Expanded(
            child: ListView(
              children: [
                const HomeWidget(title: "Profile", icon: AppImages.profile1),
                SizedBox(height: width * 10 / 375),
                const HomeWidget(title: "Account", icon: AppImages.security),
                SizedBox(height: width * 10 / 375),
                const HomeWidget(title: "Setting", icon: AppImages.setting),
                SizedBox(height: width * 10 / 375),
                const HomeWidget(title: "About", icon: AppImages.about),
                SizedBox(height: width * 5 / 375),
                Padding(
                  padding: EdgeInsets.all(width * 20 / 375),
                  child: Stack(
                    children: [
                      Image.asset(AppImages.help),
                      TextButton(
                        style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder()),
                        onPressed: () {},
                        child: Container(
                          height: width * 73 / 375,
                          width: width * 322 / 375,
                          decoration: const BoxDecoration(shape: BoxShape.rectangle),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: width * 10 / 375),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 24 / 375,right: width * 24 / 375),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    tr("Privacy_Policy"),
                    style: TextStyle(
                      fontSize: width * 13 / 375,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: AppColors.c64748B,
                    ),
                  ),
                ),
                SvgPicture.asset(AppImages.nextArrow),
                SizedBox(width: width * 30 / 375),
                Expanded(
                  child: Text(
                    tr("Terms"),
                    style: TextStyle(
                      fontSize: width * 13 / 375,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: AppColors.c64748B,
                    ),
                  ),
                ),
                SvgPicture.asset(AppImages.nextArrow),
                SizedBox(width: width * 30 / 375),
                Expanded(
                  child: Text(
                    tr("English"),
                    style: TextStyle(
                      fontSize: width * 13 / 375,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: AppColors.c64748B,
                    ),
                  ),
                ),
                SvgPicture.asset(AppImages.bottomArrow)
              ],
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: width * 24 / 375,right: width * 24 / 375,bottom: width*10/375),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(shape: const CircleBorder()),
                  onPressed: () {},
                  child: SvgPicture.asset(AppImages.menu),
                ),
                TextButton(
                  style: TextButton.styleFrom(shape: const CircleBorder()),
                  onPressed: () {},
                  child: SvgPicture.asset(AppImages.calendar),
                ),
                TextButton(
                  style: TextButton.styleFrom(shape: const CircleBorder()),
                  onPressed: () {},
                  child: SvgPicture.asset(AppImages.chat),
                ),
                TextButton(
                  style: TextButton.styleFrom(shape: const CircleBorder()),
                  onPressed: () {},
                  child: SvgPicture.asset(AppImages.profile2),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
