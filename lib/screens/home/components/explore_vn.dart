import 'package:flutter/material.dart';
import 'package:happy_trip/res/colors.dart';
import 'package:happy_trip/res/icons.dart';
import 'package:happy_trip/screens/home/components/x_w_item.dart';

class ExploreVn extends StatelessWidget {
  const ExploreVn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List provinceList = [
      "Đà Lạt",
      "Phú Quốc",
      "Nha Trang",
      "Đà Nẵng",
      "Quy Nhơn",
      "Sài Gòn",
      "Hà Nội",
      "Ninh Bình",
      "Lào Cai"
    ];

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hãy cùng khám phá Việt Nam",
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  "Và đi đến những nơi đẹp nhất",
                  maxLines: 2,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
          Container(
              height: 250,
              margin: EdgeInsets.only(top: 15),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: GridView.count(
                  primary: false,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 3 / 2,
                  crossAxisCount: 3,
                  children: List.generate(9, (index) {
                    return ProvinceItem(province: provinceList[index]);
                  }),
                ),
              ))
        ],
      ),
    );
  }
}

class ProvinceItem extends StatelessWidget {
  final String province;
  const ProvinceItem({required this.province});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://vnn-imgs-f.vgcloud.vn/2020/07/27/09/img-5663.jpg"),
            fit: BoxFit.cover,
            colorFilter:
                new ColorFilter.mode(AppColors.blurGrey, BlendMode.dstATop),
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Text(province,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.nearlyWhite)),
      ),
    );
  }
}
