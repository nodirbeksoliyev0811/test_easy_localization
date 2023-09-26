import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: const Color(0xFFF9F9F9),
        leading: TextButton(
          onPressed: () {Navigator.pop(context);},
          child: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(width*24/375),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tr("About_Us?"),
              style: TextStyle(
                fontSize: width * 17 / 375,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(height: width*24/375),
            Text(tr("Lorem"),style: TextStyle(
              fontSize: width * 14 / 375,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),),
            SizedBox(height: width*24/375),
            const Divider(height: 1,color: AppColors.cF1F5F9),
            SizedBox(height: width*24/375),
            Text(tr("Ipsum"),
              style: TextStyle(
                fontSize: width * 17 / 375,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(height: width*18/375),
            Text(tr("about_text"),style: TextStyle(
              fontSize: width * 14 / 375,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),),
            SizedBox(height: width*18/375),
            Text(tr("about_text"),style: TextStyle(
              fontSize: width * 14 / 375,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),),
            SizedBox(height: width*18/375),
            Text(tr("about_text"),style: TextStyle(
              fontSize: width * 14 / 375,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),),
          ],
        ),
      ),
    );
  }
}
