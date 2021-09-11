import 'package:flutter/material.dart';
import 'package:happy_trip/res/colors.dart';
import 'package:happy_trip/res/icons.dart';
import 'package:happy_trip/screens/home/components/x_w_item.dart';

class XperiWorld extends StatelessWidget {
  const XperiWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Danh mục yêu thích",
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              XWItem(icon: AppIcons.attractions, title: "Điểm tham quan"),
              XWItem(icon: AppIcons.tour, title: "Tour"),
              XWItem(icon: AppIcons.spa, title: "Làm đẹp & Spa"),
              XWItem(icon: AppIcons.vehicle, title: "Phương tiện di chuyển")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                XWItem(icon: AppIcons.games, title: "Sân chơi"),
                XWItem(icon: AppIcons.foods, title: "Ẩm thực"),
                XWItem(icon: AppIcons.entertainment, title: "Giải trí"),
                XWItem(icon: AppIcons.allList, title: "Tất cả danh mục")
              ])
        ],
      ),
    );
  }
}
