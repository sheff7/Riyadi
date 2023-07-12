import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';


import '../Controller/LoginController.dart';



class OtpVerificationScreen extends StatelessWidget {
  final String mobileNumber;

  OtpVerificationScreen({Key? key, required this.mobileNumber}) : super(key: key);

 late final LoginController _loginController = Get.put(LoginController(mobileNumber: mobileNumber));


@override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('Assets/Login_bg.png'),
          ),
        ),
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
                        "Enter OTP to \nLogin",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 31.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          height: 1.1,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 2.h),
                      child: OTPTextField(
                        controller: _loginController.otpFieldController.value,
                        length: 4,
                        width: double.infinity,
                        fieldWidth: 5.h,
                        spaceBetween: 0,
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        outlineBorderRadius: 1.h,
                        otpFieldStyle: OtpFieldStyle(
                          backgroundColor: Color(0xffE8E8E8),
                          focusBorderColor: Color(0xffE8E8E8),
                          enabledBorderColor: Color(0xffE8E8E8),
                        ),
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                        onCompleted: (pin) {
                          _loginController.otpVerify(pin.toString());
                          // print("Completed: $pin");
                        },
                        onChanged: (pin) {
                          print("onchange: $pin");
                        },
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't receive yet ?",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 13.sp,
                            color: Colors.black.withOpacity(1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Resend OTP",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 13.sp,
                            color: Color(0xff099F9F),
                            fontWeight: FontWeight.w600,
                            height: 1.1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    SizedBox(
                      width: double.infinity,
                      height: 5.7.h,
                      child: ElevatedButton(
                        onPressed: (){
                          _loginController.otpVerify('1234');

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff088F8F),
                          foregroundColor: Color(0xff099F9F).withOpacity(.9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                          ),
                        ),
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
    );
  }
}
