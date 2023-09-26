import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_easy_localization/ui/setting/widget/list_tile_widget.dart';
import '../../utils/colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {
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
          tr("Settings"),
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              fontFamily: "Poppins",
              color: AppColors.black),
        ),
      ),
      body: Column(
        children: [
          const ListTileWidget(title: "App_language"),
          Padding(
            padding: EdgeInsets.only(left: width*24/375, right: width*24/375),
            child: const Divider(height: 1,color: AppColors.cF1F5F9),
          ),
          const ListTileWidget(title: "Notification"),
          Padding(
            padding: EdgeInsets.only(left: width*24/375, right: width*24/375),
            child: const Divider(height: 1,color: AppColors.cF1F5F9),
          ),
          const ListTileWidget(title: "Update_version"),
        ],
      ),
    );
  }
}
