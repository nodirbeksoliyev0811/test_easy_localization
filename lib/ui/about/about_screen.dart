import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../setting/widget/list_tile_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
        centerTitle: true,
        title: Text(
          tr("About"),
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              fontFamily: "Poppins",
              color: AppColors.black),
        ),
      ),
      body: Column(
        children: [
          const ListTileWidget(title: "About_Us"),
          Padding(
            padding: EdgeInsets.only(left: width*24/375, right: width*24/375),
            child: const Divider(height: 1,color: AppColors.cF1F5F9),
          ),
          const ListTileWidget(title: "Help"),
          Padding(
            padding: EdgeInsets.only(left: width*24/375, right: width*24/375),
            child: const Divider(height: 1,color: AppColors.cF1F5F9),
          ),
          const ListTileWidget(title: "Term_and_Condition"),
          Padding(
            padding: EdgeInsets.only(left: width*24/375, right: width*24/375),
            child: const Divider(height: 1,color: AppColors.cF1F5F9),
          ),
          const ListTileWidget(title: "Data_Protection"),
        ],
      ),
    );
  }
}
