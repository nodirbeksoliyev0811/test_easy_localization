import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_easy_localization/utils/colors.dart';
import 'package:test_easy_localization/utils/icons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.context});
  final BuildContext context;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  List<String> countries = ['england', 'uzbek', 'russian'];
  List<String> flags = [AppImages.eng, AppImages.uzb, AppImages.ru];
  int? selectedButtonIndex;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: const Color(0xFFF9F9F9),
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_rounded),
        ),
        centerTitle: true,
        title: Text(
          tr("Choose_youth_language"),
          style:
              const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, fontFamily: "Poppins", color: AppColors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 24 / 375),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.cF1F5F9,
              ),
              child: TextField(
                cursorWidth: 1,
                cursorHeight: 22,
                cursorColor: AppColors.black.withOpacity(0.2),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                  border: InputBorder.none,
                  hintText: tr("Search"),
                  prefixIcon: const Icon(Icons.search),
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 15, color: AppColors.c64748B, fontFamily: "Poppins"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: AppColors.cCBD5E1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: AppColors.cCBD5E1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: AppColors.cCBD5E1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: AppColors.cCBD5E1),
                  ),
                ),
              ),
            ),
            SizedBox(height: width * 24 / 375),
            Expanded(
              child: ListView.builder(
                itemCount: countries.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: width * 24 / 375),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Image.asset(flags[index], height: width * 40 / 375, width: width * 40 / 375),
                                SizedBox(width: width * 12 / 375),
                                Text(
                                  tr(countries[index]),
                                  style: TextStyle(
                                    color: AppColors.c0F172A,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: width * 15 / 375,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(shape: const CircleBorder()),
                            child: SvgPicture.asset(
                              selectedButtonIndex == index ? AppImages.done2 : AppImages.empty2,
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  selectedButtonIndex = index;

                                  selectedButtonIndex == 0
                                      ?widget.context.setLocale(const Locale("en", "EN"))
                                      : selectedButtonIndex == 1
                                          ? widget.context.setLocale(const Locale("uz", "UZ"))
                                          : widget.context.setLocale(const Locale("ru", "RU"));
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
