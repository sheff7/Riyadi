import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../CustomWidget/CustomTextField.dart';
import '../../Utils/snackbar.dart';
import '../Controller/UserRegistrationController.dart';


class UserRegistaration extends StatelessWidget {
  final String mobileNumber;
  UserRegistaration({Key? key, required this.mobileNumber}) : super(key: key);
  late final UserRegistrationController _userRegistrationController = Get.put(UserRegistrationController(mobileNumber: mobileNumber));

  final lastNameControler = TextEditingController();
  final firstNameControler = TextEditingController();
  final emailController = TextEditingController();
  final  numberController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          Container(
            // height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('Assets/Login_bg.png'))),
            child: Padding(
              padding: EdgeInsets.only(top: 8.h, left: 5.h, right: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Colors.black,
                    iconSize: 4.h,
                    icon: Icon(
                      Icons.arrow_back_sharp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 9.h, left: 2.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Enter Your Details \nbelow",
                            style: GoogleFonts.titilliumWeb(
                              fontSize: 31.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              height: 1.1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        CustomField(
                          controller: firstNameControler,
                          hintText: 'First Name',
                        ),
                        CustomField(
                          controller:lastNameControler,
                          hintText: 'Last Name',
                        ),
                        CustomField(
                          controller: emailController,
                          hintText: 'Email',
                        ),
                        // CustomFieldNum(
                        //   controller:_userRegistrationController.userDetailsEntity.value.user![0].mobno.text,
                        //   hintText: 'Mobile Number',
                        // ),
                        Padding(
                          padding:EdgeInsets.only(bottom: 2.h),
                          child: Text("Communications and transaction history from Riyadi will be sent to the verified email address",
                              style: GoogleFonts.titilliumWeb(
                                fontSize: 11.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,

                              )),
                        ),


                        SizedBox(
                          width: double.infinity,
                          height: 5.7.h,
                          child: ElevatedButton(
                            onPressed: () async {
                              if(firstNameControler.text.isEmpty){
                                CustomSnackbar().InfoSnackBar('Register', 'Enter Firstname ');
                              } else if(lastNameControler.text.isEmpty){
                                CustomSnackbar().InfoSnackBar('Register', 'Enter lastname ');
                              }

                              else if(emailController.text.isEmpty){
                                CustomSnackbar().InfoSnackBar('Register', 'Enter email ');
                              }
                              else{
                                _userRegistrationController.Registeration(firstNameControler.text,lastNameControler.text,emailController.text,mobileNumber);
                              }

                            },

                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff088F8F),
                                foregroundColor: Color(0xff099F9F).withOpacity(.9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.h),
                                )),
                            child: Text(
                              "Login",
                              style: GoogleFonts.titilliumWeb(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
