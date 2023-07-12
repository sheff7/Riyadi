import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../../DayPass/View/DayPassList.dart';
import '../../AppConstants/ApiConstatnt.dart';
import '../../AppConstants/ColorConstants.dart';
import '../../LadiesOnly/View/LadiesOnlySinglePage.dart';
import '../../Notification/view/NotificationView.dart';
import '../../Event/View/EventList/EventList.dart';
import '../../LadiesOnly/View/LadiesOnlyList/LadiesOnlyList.dart';
import '../../Drawer/MyAccount.dart';
import '../../Profile/UserProfile/Profile.dart';
import '../../Recovery/View/RecoveryList/RecoveryList.dart';
import '../../Sports/View/SportsMore.dart';
import '../../Tournament/View/TournamentList/TournamentList.dart';
import '../Controller/HomeController.dart';
import 'LadiesOnlyWidget.dart';
import 'OfferWidget.dart';

import 'RecoveryWidget.dart';
import 'SportsItemWidget.dart';
import 'TicketWidget.dart';

class HomePage extends StatelessWidget {
  final String toke;

  HomePage({Key? key, required this.toke}) : super(key: key);
  late final _controller = Get.put(HomeController(toke: toke));

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
  ];
  final List<Map<String, dynamic>> gridData = [
    {
      'image': 'Assets/cricket-modified.jpeg',
      'title': 'Rayyan\nCricket club',
      'crossAxisCellCount': 1,
      'mainAxisCellCount': 1.9,
    },
    {
      'image': 'Assets/R-modified.jpeg',
      'title': 'Al Sadd\nSportzone',
      'crossAxisCellCount': 2,
      'mainAxisCellCount': 0.95,
    },
    {
      'image': 'Assets/bowling-modified.jpg',
      'title': 'Bowling\nClub Katara',
      'crossAxisCellCount': 2,
      'mainAxisCellCount': 0.95,
    },
    {
      'image': 'Assets/badminton-modified.jpeg',
      'title': 'Ezdan\nBadminton Court',
      'crossAxisCellCount': 1,
      'mainAxisCellCount': 1.9,
    },
  ];

  @override
  Widget build(BuildContext context) {
    bool iskeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                      topLeft: Radius.zero,
                      topRight: Radius.zero,
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18))),
              child: Padding(
                padding: EdgeInsets.only(top: 4.h),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 3.h, top: 2.4.h),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () {
                                Get.to(const MyAccount());
                              },
                              child: Container(
                                height: 4.h,
                                width: 4.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "Assets/BottomBarIcons/menu_home.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2.5.h),
                                child: Text(
                                  "hello".tr,
                                  style: GoogleFonts.titilliumWeb(
                                      color: Colors.white, fontSize: 9.sp),
                                ),
                              ),
                              Text(
                                "Antony Martial",
                                style: GoogleFonts.titilliumWeb(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Container(
                                height: 2.2.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(.5.h),
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 0.5),
                                ),

                                child: Row(
                                  children: [
                                    Image.asset("Assets/image 72.png"),
                                    Padding(
                                      padding: EdgeInsets.only(right: .4.h),
                                      child: Text(
                                        "120 RP",
                                        style: TextStyle(
                                            fontSize: 7.sp,
                                            color: const Color(0xff035B59),
                                            fontWeight: FontWeight.w800),
                                      ),
                                    )
                                  ],
                                ),
                                //   fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 3.h, top: 3.4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: InkWell(
                                  onTap: () {
                                    Get.to(const NotificationView());
                                  },
                                  child: Image.asset(
                                    "Assets/BottomBarIcons/notif.png",
                                    height: 4.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3.5.h,
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      right: 4.h,
                      top: 2.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.h),
                          child: Text("find_your_venue".tr,
                              style: GoogleFonts.titilliumWeb(
                                fontSize: 17.sp,
                                color: const Color(0xff06807F),
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.5.h),
                          child: TextField(
                            style: TextStyle(fontSize: 10.sp),
                            decoration: InputDecoration(

                                // label: Text('Search'),
                                hintText: 'Search',
                                labelStyle: const TextStyle(
                                  color: Colors.black26,
                                ),
                                hintStyle: TextStyle(fontSize: 10.sp),
                                isDense: true,
                                // Added this
                                contentPadding: const EdgeInsets.all(8),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: const Color(0xff099F9F)
                                          .withOpacity(.9),
                                      width: .1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.1,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.1,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.1,
                                  ),
                                ),

                                // border: OutlineInputBorder(
                                //     borderRadius: BorderRadius.circular(10),
                                //     borderSide:
                                //      BorderSide(width: .5, style: BorderStyle.none,color: ColorConstants.appThemeColorRed)),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.search_rounded),
                                  onPressed: () {},
                                ),
                                filled: true,
                                fillColor: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("quick_booking".tr,
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 15.sp,
                                    color: const Color(0xff06807F),
                                    fontWeight: FontWeight.w700,
                                  )),
                              Text("more".tr,
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 9.sp,
                                    color: const Color(0xff222222),
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                        StaggeredGrid.count(
                          crossAxisCount: 4,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          children: gridData.map((data) {
                            return StaggeredGridTile.count(
                              crossAxisCellCount:
                                  data['crossAxisCellCount'] as int,
                              mainAxisCellCount:
                                  data['mainAxisCellCount'] as double,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(data['image'] as String),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.black.withOpacity(0.2),
                                        const Color(0xff088F8F)
                                            .withOpacity(0.7),
                                      ],
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 1.h, bottom: 1.h),
                                      child: Text(
                                        data['title'] as String,
                                        style: TextStyle(
                                            fontSize: 8.sp,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.5.h, top: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("choose_your_sport".tr,
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 15.sp,
                                    color: const Color(0xff06807F),
                                    fontWeight: FontWeight.w700,
                                  )),
                              InkWell(
                                onTap: () {
                                  Get.to(SportsMoreView());
                                },
                                child: Text("more".tr,
                                    style: GoogleFonts.titilliumWeb(
                                      fontSize: 9.sp,
                                      color: const Color(0xff222222),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),

                        SizedBox(
                          // height: 20.h,
                          width: double.infinity,
                          child: GridView.count(
                            padding: EdgeInsets.zero,
                            crossAxisCount: 5,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            childAspectRatio: .17.w,
                            mainAxisSpacing: 0.h,
                            crossAxisSpacing: 1.5.w,
                            children: List.generate(
                              sportItems.length,
                              (index) {
                                return SportItemWidget(
                                  imagePath: sportItems[index]['imagePath'],
                                  title: sportItems[index]['title'],
                                  backgroundColor: sportItems[index]
                                      ['backgroundColor'],
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.h, top: 1.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("ladies_only".tr,
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 13.sp,
                                    color: const Color(0xff06807F),
                                    fontWeight: FontWeight.w700,
                                  )),
                              InkWell(
                                onTap: () {
                                  Get.to(const LadiesOnlyList());
                                },
                                child: Text("more".tr,
                                    style: GoogleFonts.titilliumWeb(
                                      fontSize: 9.sp,
                                      color: const Color(0xff222222),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),

                        Obx(() => _ladiesonlyWidget()
                            // LadiesOnlyWidget(
                            //   image: _controller
                            //       .gimListEntity.value.gyms![0].activitiesimage
                            //       .toString(),
                            //   activities: _controller
                            //       .gimListEntity.value.gyms![0].activities
                            //       .toString(),
                            //   venuename: _controller
                            //       .gimListEntity.value.gyms![0].venuename
                            //       .toString(),
                            // ),

                            ),

                        ///Recovery section
                        ///

                        Padding(
                          padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Recovery",
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 12.sp,
                                    color: const Color(0xff06807F),
                                    fontWeight: FontWeight.w700,
                                  )),
                              InkWell(
                                onTap: () {
                                  Get.to(const RecoveryList());
                                },
                                child: Text("More",
                                    style: GoogleFonts.titilliumWeb(
                                      fontSize: 9.sp,
                                      color: const Color(0xff222222),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),

                        RecoveryWidget(),

                        Padding(
                          padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Day Paasses",
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 12.sp,
                                    color: const Color(0xff06807F),
                                    fontWeight: FontWeight.w700,
                                  )),
                              InkWell(
                                onTap: () {
                                  Get.to(const DayPassList());
                                },
                                child: Text("More",
                                    style: GoogleFonts.titilliumWeb(
                                      fontSize: 9.sp,
                                      color: const Color(0xff222222),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),

                        InkWell(
                            onTap: () {
                              Get.to(const DayPassList());
                            },

                            ///Day Pass section

                            child: DayPasses()),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.h, top: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Offers",
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 12.sp,
                                    color: const Color(0xff06807F),
                                    fontWeight: FontWeight.w700,
                                  )),
                              Text("More",
                                  style: GoogleFonts.titilliumWeb(
                                    fontSize: 9.sp,
                                    color: const Color(0xff222222),
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                        OffersWidget(),
                        SizedBox(
                          height: 2.h,
                        )

                        // Container(
                        //   height:200,
                        //   color: Colors.white,
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
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
                      // Get.to(const ());
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 2.5.h,
                            child: Image.asset(
                                "Assets/BottomBarIcons/home_select.png")),
                        Text(
                          "Home",
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 8.sp,
                            color: Color(0xff137171),
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
                          "Accounts",
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
              onPressed: () {
                Get.to(SportsMoreView());
              },
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

  Widget _ladiesonlyWidget() {
    if (_controller.isLoading.value == false) {
      if (_controller.gimListEntity.value == null) {
        return Text("No data");
      } else if (_controller.gimListEntity.value.status == "true") {
        if (_controller.gimListEntity.value.gyms!.length == 0) {
          return Text("No data");
        } else if (_controller.gimListEntity.value.gyms!.length != 0) {
          return SizedBox(
            height: 18.3.h,
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: _controller.gimListEntity.value.gyms!.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: InkWell(
                    onTap: () {
                      Get.to(LadiesOnlySingleList());
                    },
                    child: Container(
                      width: 28.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.h),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: .3,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 26.w,
                            margin: EdgeInsets.all(.6.h),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:_image(_controller.gimListEntity.value.gyms![index].activitiesimage.toString())),


// NetworkImage(_controller.gimListEntity.value.gyms![index].activitiesimage.toString()),
// fit: BoxFit.cover,

                              borderRadius: BorderRadius.all(Radius.circular(13)),
                              color: Color(0xffFFB485),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 1.h),
                            child: Text(
                              _controller.gimListEntity.value.gyms![index].activities.toString(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 7.sp,
                                color: Color(0xff06807F),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );;
        }
      } else if (_controller.gimListEntity.value.status == "false") {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text('Please Wait...')],
          ),
        );
      }
    } else if (_controller.isLoading.value == true) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: ColorConstants.appThemeColorGreen,
            ),
            Text('Loading..'),
          ],
        ),
      );
    }

    // Add a default return statement in case none of the conditions are met.
    return Container();
  }
}

_image(String images) {
  // productListController!.imgurl.value = images;
  if (images == null) {
    return Container();
  } else if (images != null) {
    return Container(
      child: CachedNetworkImage(
        imageUrl: ApiConstant.BASE_URL + images,
        // height: 7.h,
        // width: 4.h,
        errorWidget: (context, url, error) => Icon(Icons.error),
        fit: BoxFit.cover,
      ),
      // height: 5.h,
    );
  }
}

// if(_controller.isLoading.value==true){
// return Container();
//
// }
// else if(_controller.isLoading.value==false){
// if(_controller.gimListEntity.value!=null){
// if(_controller.gimListEntity.value.status=="false"){
// return Container();
//
// }
// else if(_controller.gimListEntity.value.status=="true"){
// return SizedBox(
// height: 18.3.h,
// child: ListView.builder(
// physics: AlwaysScrollableScrollPhysics(),
// scrollDirection: Axis.horizontal,
// padding: EdgeInsets.zero,
// shrinkWrap: true,
// itemCount: _controller.gimListEntity.value.gyms!.length,
// itemBuilder: (BuildContext context, int index) {
// return Padding(
// padding: EdgeInsets.only(right: 1.h),
// child: InkWell(
// onTap: () {
// Get.to(LadiesOnlySingleList());
// },
// child: Container(
// width: 28.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(2.h),
// color: Colors.white,
// border: Border.all(
// color: Colors.grey,
// style: BorderStyle.solid,
// width: .3,
// ),
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// height: 26.w,
// margin: EdgeInsets.all(.6.h),
// decoration: BoxDecoration(
// image: DecorationImage(
// image:_image(_controller.gimListEntity.value.gyms![index].activitiesimage.toString())),
//
//
// // NetworkImage(_controller.gimListEntity.value.gyms![index].activitiesimage.toString()),
// // fit: BoxFit.cover,
//
// borderRadius: BorderRadius.all(Radius.circular(13)),
// color: Color(0xffFFB485),
// ),
// ),
// Container(
// padding: EdgeInsets.symmetric(horizontal: 1.h),
// child: Text(
// _controller.gimListEntity.value.gyms![index].activities.toString(),
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// textAlign: TextAlign.start,
// style: TextStyle(
// fontSize: 7.sp,
// color: Color(0xff06807F),
// fontWeight: FontWeight.w700,
// ),
// ),
// ),
// ],
// ),
// ),
// ),
// );
// },
// ),
// );
// }
// }
// else if(_controller.gimListEntity.value==null){
// return Container(
// child:Text("entity null")
// );
//
// }
// }

