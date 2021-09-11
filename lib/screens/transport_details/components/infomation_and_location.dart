import 'package:flutter/material.dart';
import 'package:happy_trip/res/colors.dart';
import 'package:happy_trip/res/dimens.dart';
import 'package:happy_trip/res/icons.dart';
import 'package:happy_trip/res/images.dart';

class InfoAndLocation extends StatelessWidget {
  const InfoAndLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppDimens.DEFAULT_MARGIN_V),
      padding: const EdgeInsets.all(AppDimens.DEFAULT_PADDING_H),
      color: AppColors.nearlyWhite,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Thông tin đưa đón & Địa điểm",
            style: Theme.of(context).textTheme.headline5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
                vertical: AppDimens.DEFAULT_MARGIN_V),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Quốc lộ 13 cũ, Hiệp Bình Phước, Thủ Đức, Thành Phố Hồ Chí Minh",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(
                            AppImages.GG_MAP,
                          ),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleButton(context, "Xem đường đi", AppIcons.seeingRoute),
              CircleButton(context, "Gọi đối tác", AppIcons.call),
            ],
          )
        ],
      ),
    );
  }

  Container CircleButton(BuildContext context, String title, IconData icon) {
    return Container(
      width: 100,
      //color: Colors.yellow,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.deepPink),
            child: Icon(
              icon,
              color: AppColors.nearlyWhite,
              size: 20,
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.caption,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
