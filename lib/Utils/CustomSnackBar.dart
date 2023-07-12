
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


import '../AppConstants/ColorConstants.dart';
import 'StringConstants.dart';

class CustomSnackBar{


  apiErrorSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Container(height: 3.h,
          child: Align(
              alignment:Alignment.centerLeft,
              child: Text(StringConstants.ApiErrorMessage))),
      backgroundColor: ColorConstants.appBarColor1,
      behavior: SnackBarBehavior.fixed,
      elevation: 2.h,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      dismissDirection: DismissDirection.horizontal,
      clipBehavior: Clip.antiAlias,
      duration: Duration(minutes: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  successSnackBar(BuildContext context,String title) {
    final snackBar = SnackBar(
      content: Container(
          height: 3.h,
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(title+" "+StringConstants.SuccessMessage))),
      backgroundColor: ColorConstants.appBarColor1,
      behavior: SnackBarBehavior.fixed,
      elevation: 2.h,
      dismissDirection: DismissDirection.horizontal,
      clipBehavior: Clip.antiAlias,
      duration: Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  messageSnackBar(BuildContext context,String title) {
    final snackBar = SnackBar(
      content: Container(
          height: 3.h,
          child: Align(
              alignment:Alignment.centerLeft,
              child: Text(title))),
      backgroundColor: ColorConstants.appBarColor1,
      behavior: SnackBarBehavior.fixed,
      elevation: 2.h,
      showCloseIcon: false,
      closeIconColor: Colors.white,
      dismissDirection: DismissDirection.horizontal,
      clipBehavior: Clip.antiAlias,
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  errorMessageSnackBar(BuildContext context,String title) {
    final snackBar = SnackBar(
      content: Container(
          height: 3.h,
          child: Align(
              alignment:Alignment.centerLeft,
              child: Text(title))),
      backgroundColor: ColorConstants.appBarColor1,
      behavior: SnackBarBehavior.fixed,
      elevation: 2.h,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      dismissDirection: DismissDirection.horizontal,
      clipBehavior: Clip.antiAlias,
      duration: Duration(minutes: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }



}