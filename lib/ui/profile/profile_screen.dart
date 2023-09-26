import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/colors.dart';
import '../../utils/icons.dart';
import '../widgets/text_field_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenPage();
}

class _ProfileScreenPage extends State<ProfileScreen> {
  bool isMale = true;
  bool isFemale = false;
  Color maleColor = AppColors.cF1F5F9;
  Color femaleColor = AppColors.white;

  @override
  void initState() {
    isMale = true;
    isFemale = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
          tr("Profile"),
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              fontFamily: "Poppins",
              color: AppColors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
          child: Column(
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(
                      AppImages.user,
                      height: height * (80 / 812),
                      width: width * (80 / 375),
                    ),
                    SvgPicture.asset(
                      AppImages.camera,
                      height: height * (32 / 812),
                      width: width * (32 / 375),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * (40 / 812),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      children: [
                        const TextFieldScreen(title: "Name", text: "User_name",type: TextInputType.name),
                        SizedBox(
                          height: height * (16 / 812),
                        ),
                        const TextFieldScreen(title: "Email", text: "Email",type: TextInputType.emailAddress),
                        SizedBox(
                          height: height * (16 / 812),
                        ),
                        const TextFieldScreen(
                            title: "Date_of_birth", text: "18/02/2003",type: TextInputType.datetime),
                        SizedBox(
                          height: height * (16 / 812),
                        ),
                        TextFieldScreen(title: "Phone_Number", text: "+998 94 811 50 55",type: TextInputType.phone),
                        SizedBox(
                          height: height * (16 / 812),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  tr("Student_ID"),
                                  style: const TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.c0F172A),
                                ),
                              ],
                            ),
                            SizedBox(height: height * (8 / 812)),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.cF1F5F9,
                              ),
                              child: TextField(
                                cursorWidth: 1,
                                cursorHeight: 22,
                                cursorColor: AppColors.black.withOpacity(0.2),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 15),
                                  border: InputBorder.none,
                                  hintText: "#87654",
                                  hintStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: AppColors.c64748B,
                                      fontFamily: "Poppins"),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.cCBD5E1),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.cCBD5E1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.cCBD5E1),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.cCBD5E1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * (16 / 812),
                        ),
                        Column(
                          children: [
                             Row(
                              children: [
                                Text(
                                  tr("Gender"),
                                  style: const TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.c0F172A),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * (8 / 812),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: width * (156 / 375),
                                    height: height * (48 / 812),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: maleColor,
                                        border: Border.all(
                                            width: 1,
                                            color: AppColors.cCBD5E1)),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isMale = true;
                                              isFemale = false;
                                              maleColor = AppColors.cF1F5F9;
                                              femaleColor = AppColors.white;
                                            });
                                          },
                                          icon: SvgPicture.asset(isMale
                                              ? AppImages.done
                                              : AppImages.empty),
                                        ),
                                        SizedBox(
                                          width: width * (10 / 375),
                                        ),
                                        Text(
                                          tr("Male"),
                                          style: const TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.c0F172A),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * (14 / 375),
                                ),
                                Expanded(
                                  child: Container(
                                    width: width * (156 / 375),
                                    height: height * (48 / 812),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: femaleColor,
                                        border: Border.all(
                                            width: 1,
                                            color: AppColors.cCBD5E1)),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isFemale = true;
                                              isMale = false;
                                              femaleColor = AppColors.cF1F5F9;
                                              maleColor = AppColors.white;
                                            });
                                          },
                                          icon: SvgPicture.asset(isFemale
                                              ? AppImages.done
                                              : AppImages.empty),
                                        ),
                                        SizedBox(
                                          width: width * (10 / 375),
                                        ),
                                        Text(
                                          tr("Female"),
                                          style: const TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.c0F172A),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * (16 / 812),
                            ),
                            Row(
                              children: [
                                Text(
                                  tr("Address"),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: AppColors.c0F172A),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * (8 / 812),
                            ),
                            Container(
                              height: height * (100 / 812),
                              width: width * (327 / 375),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.cF1F5F9),
                              child: TextField(
                                cursorHeight: 20,
                                cursorWidth: 1,
                                cursorColor: AppColors.black,
                                keyboardType: TextInputType.text,
                                maxLines: 10,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 15),
                                  border: InputBorder.none,
                                  hintText:
                                      tr("1106_Sunrise_Road_Las_Vegas_NV_89102"),
                                  hintStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.c64748B,
                                      fontFamily: "Poppins",
                                      letterSpacing: 0.2),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.cCBD5E1),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.cCBD5E1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.cCBD5E1),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.cCBD5E1),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * (24 / 812),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.c52B6DF,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  fixedSize: Size(
                                      double.infinity, height * (56 / 812))),
                              child: Center(
                                child: Text(
                                  tr("Update_Profile"),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: AppColors.white,
                                      fontFamily: "Poppins"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
