import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:happy_trip/res/colors.dart';
import 'package:happy_trip/res/icons.dart';
import 'package:happy_trip/res/images.dart';
import 'package:happy_trip/screens/home/components/explore_vn.dart';
import 'package:happy_trip/screens/home/components/transport_service.dart';
import 'package:happy_trip/screens/home/components/travel_experience.dart';
import 'package:happy_trip/screens/home/components/trip_suggestions.dart';
import 'package:happy_trip/screens/home/components/xperi_world.dart';

class HomeScreens extends StatefulWidget {
  static const routeName = '\HomeScreens';
  const HomeScreens({Key? key}) : super(key: key);

  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final searchController = TextEditingController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    searchController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List listImageDemo = [
      "https://www.anhdulich.vn/storage/sliders/slide4.jpg",
      "https://dulichtoday.vn/wp-content/uploads/2017/04/vinh-Ha-Long.jpg",
      "https://www.anhdulich.vn/storage/sliders/ha-long-bay-copy.jpg",
      "https://media.vov.vn/sites/default/files/styles/large/public/2020-09/99-thuyen_hoa.jpg",
      "https://media-cdn.laodong.vn/storage/newsportal/2017/8/28/551691/Du-Lich_1.jpg"
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: AppBar(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          //pinned: true,
          //floating: true,
          //expandedHeight: height * 0.1,

          flexibleSpace: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 3)
            ]),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  bottom: -25,
                  left: width * 0.05,
                  child: Container(
                    width: width * 0.9,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 5))
                        ]),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: AppColors.nearlyWhite,
                          hintText: "Search",
                          prefixIcon: Icon(AppIcons.search),
                          suffixIcon: searchController.text.isEmpty
                              ? Container(
                                  width: 0,
                                )
                              : IconButton(
                                  onPressed: () => searchController.clear(),
                                  icon: Icon(AppIcons.clear))),
                      onChanged: (text) =>
                          {print(searchController.text.isEmpty)},
                    ),
                  ),
                )
              ],
            ),
          ),
          title: Text(
            "Xin Chào",
            style: TextStyle(color: AppColors.nearlyWhite),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(AppIcons.bookmarkAdded),
                  tooltip: "đã lưu",
                  onPressed: () => {},
                  iconSize: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: const Icon(AppIcons.more),
                  tooltip: "thêm",
                  onPressed: () => {},
                  iconSize: 30,
                )
              ],
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: CarouselSlider.builder(
                    itemCount: listImageDemo.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                      width: width * 0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(listImageDemo[itemIndex]),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                height: 30,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.nearlyWhite,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Image.asset(
                                  AppImages.LOGO,
                                  fit: BoxFit.contain,
                                  height: 40.0,
                                  width: 50.0,
                                ),
                              )),
                        ],
                      ),
                    ),
                    options: CarouselOptions(
                        height: 150,
                        aspectRatio: 2.0,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlay: true,
                        enlargeCenterPage: true),
                  ),
                ),
                XperiWorld(),
                TransportService(),
                TripSuggestions(),
                ExploreVn(),
                TravelExperience()
              ],
            ),
          )
        ],
      ),
    );
  }
}
