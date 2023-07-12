import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../AppConstants/ColorConstants.dart';
import '../../../Event/View/EventList/EventList.dart';
import '../../../HomePage/View/HomePage.dart';
import '../../../Profile/UserProfile/Profile.dart';
import '../../../Tournament/View/TournamentList/TournamentList.dart';
import 'SportsMoreWidget.dart';

class SportsMoreView extends StatelessWidget {
   SportsMoreView({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> sportItems = [
    {
      'imagePath': 'Assets/foot.png',
      'title': 'Football',
      'backgroundColor': const Color(0xffC7D1FF),
    },
    {
      'imagePath': 'Assets/Cricket.png',
      'title': 'Cricket',
      'backgroundColor': const Color(0xffF2FBAD),
    },
    {
      'imagePath': 'Assets/Volleyball.png',
      'title': 'Volleyball',
      'backgroundColor': const Color(0xffFFF4D4),
    },
    {
      'imagePath': 'Assets/Basketball.png',
      'title': 'Basket ball',
      'backgroundColor': const Color(0xffFFB485),
    },
    {
      'imagePath': 'Assets/bad.png',
      'title': 'Badminton',
      'backgroundColor': const Color(0xffA7F1D2),
    },
    {
      'imagePath': 'Assets/Golfball.png',
      'title': 'Golf',
      'backgroundColor': const Color(0xffA7F1D2),
    },
    {
      'imagePath': 'Assets/Bowli.png',
      'title': 'Bowling',
      'backgroundColor': const Color(0xffB0E5FF),
    },
    {
      'imagePath': 'Assets/Darts.png',
      'title': 'Darts',
      'backgroundColor': const Color(0xffC7D1FF),
    },
    {
      'imagePath': 'Assets/Surfing.png',
      'title': 'Surfing',
      'backgroundColor': const Color(0xffF2FBAD),
    },
    {
      'imagePath': 'Assets/tble.png',
      'title': 'Table tennis',
      'backgroundColor': const Color(0xffFFB485),
    },
    {
      'imagePath': 'Assets/foot.png',
      'title': 'Football',
      'backgroundColor': const Color(0xffC7D1FF),
    },
    {
      'imagePath': 'Assets/Cricket.png',
      'title': 'Cricket',
      'backgroundColor': const Color(0xffF2FBAD),
    },
    {
      'imagePath': 'Assets/Volleyball.png',
      'title': 'Volleyball',
      'backgroundColor': const Color(0xffFFF4D4),
    },
    {
      'imagePath': 'Assets/Basketball.png',
      'title': 'Basket ball',
      'backgroundColor': const Color(0xffFFB485),
    },
    {
      'imagePath': 'Assets/bad.png',
      'title': 'Badminton',
      'backgroundColor': const Color(0xffA7F1D2),
    },
    {
      'imagePath': 'Assets/Golfball.png',
      'title': 'Golf',
      'backgroundColor': const Color(0xffA7F1D2),
    },
    {
      'imagePath': 'Assets/Bowli.png',
      'title': 'Bowling',
      'backgroundColor': const Color(0xffB0E5FF),
    },
    {
      'imagePath': 'Assets/Darts.png',
      'title': 'Darts',
      'backgroundColor': const Color(0xffC7D1FF),
    },
    {
      'imagePath': 'Assets/Surfing.png',
      'title': 'Surfing',
      'backgroundColor': const Color(0xffF2FBAD),
    },
    {
      'imagePath': 'Assets/tble.png',
      'title': 'Table tennis',
      'backgroundColor': const Color(0xffFFB485),
    },
  ];

  @override
  Widget build(BuildContext context) {
    bool iskeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          pinned: false,
          floating: true,
          centerTitle: true,
          expandedHeight: 8.h,
          leading: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: IconButton(
              onPressed: () {
                // Get.to(HomePage());
              },
              color: Colors.white,
              iconSize: 2.h,
              icon: const Icon(
                Icons.arrow_back_ios_new,
              ),
            ),
          ),
          title: Text(
            "Sports",
            style: GoogleFonts.titilliumWeb(
              fontSize: 15.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorConstants.appBarColor1,
                    ColorConstants.appBarColor2,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18))),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 3.h,top: 3.h),
                  child: Container(
                    color: Colors.white,
                    child:SizedBox(
                      width: double.infinity,
                      child: GridView.count(
                        padding: EdgeInsets.zero,
                        crossAxisCount: 5,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        childAspectRatio: .65,
                        mainAxisSpacing: 0.h,
                        crossAxisSpacing: 1.5.h,
                        children: List.generate(
                          sportItems.length,
                              (index) {
                            return SportsMoreWidget(
                              imagePath: sportItems[index]['imagePath'],
                              title: sportItems[index]['title'],
                              backgroundColor: sportItems[index]
                              ['backgroundColor'],
                            );
                          },
                        ),
                      ),
                    )
                  ),
                ),
              );
            },
            childCount: 1,
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        height: 7.2.h,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xff099F9F).withOpacity(.9),
                const Color(0xff047472).withOpacity(1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.zero,
                bottomRight: Radius.zero)),
        child: Padding(
          padding: EdgeInsets.only(
            left: 4.h,
            right: 4.h,
            top: 1.h,
          ),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      // Get.to(HomePage());
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 2.5.h,
                            child:
                                Image.asset("Assets/BottomBarIcons/Home.png")),
                        Text(
                          "Home",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 8.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Get.to(const Profile());
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 2.5.h,
                            child: Image.asset(
                                "Assets/BottomBarIcons/Account.png")),
                        Text(
                          "Account",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 8.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.6.h),
                    child: Center(
                      child: Text(
                        "Sports",
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 7.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Get.to(const TournamentList());
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 2.5.h,
                            child: Image.asset(
                                "Assets/BottomBarIcons/Tournament.png")),
                        Text(
                          "Tournament",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 8.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Get.to(const EventList());
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 2.5.h,
                            child:
                                Image.asset("Assets/BottomBarIcons/Event.png")),
                        Text(
                          "Event",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 8.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: !iskeyboardOpen,
        child: Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: SizedBox(
            height: 6.h,
            width: 6.h,
            child: FloatingActionButton(
              mini: false,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              backgroundColor: Colors.white,
              onPressed: () {},
              tooltip: '',
              child: Padding(
                padding: EdgeInsets.all(.8.h),
                child: Image.asset("Assets/BottomBarIcons/Sport.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
