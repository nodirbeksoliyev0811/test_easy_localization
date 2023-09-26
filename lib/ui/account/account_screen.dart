import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../widgets/text_field_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
          tr("Account"),
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              fontFamily: "Poppins",
              color: AppColors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: width * 24 / 375,
              right: width * 24 / 375,
              top: width * 24 / 375,
              bottom: width * 16 / 375,
            ),
            child: const TextFieldScreen(
              title: "Old_Password",
              text: "Old_Password",
              type: TextInputType.visiblePassword,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width * 24 / 375,
              right: width * 24 / 375,
              bottom: width * 16 / 375,
            ),
            child: const TextFieldScreen(
              title: "New_Password",
              text: "New_Password",
              type: TextInputType.visiblePassword,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width * 24 / 375,
              right: width * 24 / 375,
            ),
            child: const TextFieldScreen(
              title: "Confirm_Password",
              text: "Confirm_Password",
              type: TextInputType.visiblePassword,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(width*24/375),
            child: ElevatedButton(
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
          ),
        ],
      ),
    );
  }
}
// import 'package:default_project/ui/account/storage_repository.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import '../../utils/colors.dart';
// import '../Profile/text_field.dart';
// import '../home/home_screen.dart';
//
// class AccountScreen extends StatefulWidget {
//   const AccountScreen({super.key});
//
//   @override
//   State<AccountScreen> createState() => _AccountScreenState();
// }
//
// class _AccountScreenState extends State<AccountScreen> {
//
//   Future<void>  _init()async {
//     oldPassword=StorageRepository.getString("old_password");
//     isStart=StorageRepository.getBool("is_start");
//   }
//
//   @override
//   void initState() {
//     _init();
//     super.initState();
//   }
//
//
//   String oldPassword="";
//   bool isStart=true;
//
//   final TextEditingController _oldPassword=TextEditingController();
//   final TextEditingController _newPassword=TextEditingController();
//   final TextEditingController _confirmPassword=TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
//         child: SafeArea(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Ink(
//                       child: InkWell(
//                           onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
//                             return const HomeScreen();
//                           }));},
//                           child: Icon(Icons.keyboard_backspace_outlined))),
//                   SizedBox(
//                     width: width * (103 / 375),
//                   ),
//                   Text(
//                     tr("Account"),
//                     style: const TextStyle(
//                         fontFamily: "Poppins",
//                         fontSize: 17,
//                         fontWeight: FontWeight.w500,
//                         color: AppColors.black),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: height * (36 / 812),
//               ),
//               TextFieldScreen(title: tr("Old_Password"), text: tr("Old_Password"), type: TextInputType.visiblePassword,  controller: _oldPassword, ),
//               SizedBox(
//                 height: height * (16 / 812),
//               ),
//               TextFieldScreen(title: tr("New_Password"), text: tr("New Password"), type: TextInputType.visiblePassword, controller: _newPassword,),
//               SizedBox(
//                 height: height * (16 / 812),
//               ),
//               TextFieldScreen(
//                 title: tr("Confirm_Password"), text: tr("Confirm_Password"), type: TextInputType.visiblePassword, controller: _confirmPassword,),
//               SizedBox(
//                 height: height * (24 / 812),
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColors.c52B6DF,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     fixedSize: Size(double.infinity, height * (56 / 812))),
//                 child: Center(
//                   child: Text(
//                     tr("Update Password"),
//                     style: const TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 17,
//                         color: AppColors.white,
//                         fontFamily: "Poppins"),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   _saver(String name,String value)async{
//     await StorageRepository.putString(name, value);
//   }
// }
