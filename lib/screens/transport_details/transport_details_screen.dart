import 'dart:math';

import 'package:flutter/material.dart';
import 'package:happy_trip/res/colors.dart';
import 'package:happy_trip/res/icons.dart';
import 'package:happy_trip/res/dimens.dart';
import 'package:happy_trip/screens/transport_details/components/infomation_and_location.dart';
import 'package:happy_trip/screens/transport_details/components/transport_description.dart';

class TransportDetailsScreen extends StatefulWidget {
  static const routeName = '\TransportDetailsScreen';
  //const TransportDetailsScreen({Key? key}) : super(key: key);
  @override
  _TransportDetailsScreenState createState() => _TransportDetailsScreenState();
}

class _TransportDetailsScreenState extends State<TransportDetailsScreen> {
  var top = 0.0;
  var opacity = 0.0;
  late ScrollController _scrollController;
  @override
  void initState() {
    // TODO: implement initState
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const List listImg = [
      "https://images.vietnamtourism.gov.vn/vn/images/2017/buc-anh-du-lich-dep-1.jpg",
      "https://dulichtoday.vn/wp-content/uploads/2017/04/dao-Phu-Quoc.jpg",
      "https://linhhungtourist.com.vn/wp-content/uploads/2019/03/1551111810-291-2-1551079327-width650height433.jpg",
      "https://image.thanhnien.vn/1024/uploaded/giangvu/travel/travel1_kowk.jpg",
      "https://media.truyenhinhdulich.vn/upload/news/7230_10_bai_bien_dep_nhat_o_viet_nam_theo_cua_forbes_11172401072019.jpg",
      "https://pystravel.vn/uploads/posts/avatar/1590739634.jpg"
    ];
    //double offset = _scrollController.offset;

    return Scaffold(
      backgroundColor: AppColors.blurGrey,
      extendBodyBehindAppBar: true,
      bottomSheet: Container(
        decoration: BoxDecoration(
            color: AppColors.nearlyWhite,
            boxShadow: [
              BoxShadow(
                  color: AppColors.deepGrey.withOpacity(0.4),
                  blurRadius: 1,
                  offset: Offset(0, -2))
            ],
            border: Border(bottom: BorderSide(color: AppColors.deepGrey))),
        height: 70,
        padding:
            const EdgeInsets.symmetric(horizontal: AppDimens.DEFAULT_PADDING_H),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Giá từ",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 16),
                ),
                Text(
                  "VND 748.000",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: AppColors.nearlyOrange),
                )
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.DEFAULT_PADDING_H),
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    color: AppColors.nearlyBlue,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "Tìm phiếu dịch vụ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.nearlyWhite),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
          backgroundColor: AppColors.deepPink.withOpacity(opacity),
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: BackButton(
            onPressed: () {},
          ),
          title: Text("Title"),
          actions: [
            IconButton(
                onPressed: () {
                  print(top);
                },
                icon: Icon(AppIcons.bookmark)),
            IconButton(onPressed: () {}, icon: Icon(AppIcons.moreV)),
          ]),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 371,
                  child: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    top = constraints.biggest.height;
                    opacity = min<double>(1.0, _scrollController.offset / top);
                    //debugPrint(opacity.toString());
                    return Container(
                      //height: MediaQuery.of(context).size.height * 0.45,
                      width: double.infinity,
                      color: AppColors.blurGrey,
                      child: Column(
                        children: [
                          Flexible(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(listImg[0]),
                                        fit: BoxFit.cover)),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Flexible(
                              flex: 1,
                              child: Row(
                                children: [
                                  Flexible(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(listImg[1]),
                                                fit: BoxFit.cover)),
                                      )),
                                  Flexible(
                                      flex: 1,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 2),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(listImg[2]),
                                                fit: BoxFit.cover)),
                                      )),
                                  Flexible(
                                      flex: 1,
                                      child: Container(
                                        margin: const EdgeInsets.only(right: 2),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(listImg[3]),
                                                fit: BoxFit.cover)),
                                      )),
                                  Flexible(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          print(
                                              'Max height: ${constraints.maxHeight}, max width: ${constraints.maxWidth}');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image:
                                                      NetworkImage(listImg[4]),
                                                  fit: BoxFit.cover,
                                                  colorFilter:
                                                      new ColorFilter.mode(
                                                          AppColors.deepGrey
                                                              .withOpacity(0.3),
                                                          BlendMode.dstATop))),
                                          child: Center(
                                            child: Text(
                                              "Xem tất cả ảnh",
                                              style: TextStyle(fontSize: 14),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      )),
                                ],
                              )),
                        ],
                      ),
                    );
                  }),
                ),
                TransportDes(),
                InfoAndLocation(),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
