import 'package:flutter/material.dart';
import 'package:happy_trip/res/dimens.dart';
import '../../../res/res.dart';

class NotificationEmpty extends StatelessWidget {
  const NotificationEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blurGrey,
      padding:
          const EdgeInsets.symmetric(horizontal: AppDimens.DEFAULT_PADDING_H),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            margin: const EdgeInsets.symmetric(
                vertical: AppDimens.DEFAULT_MARGIN_V),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.NOTIFICATION_EMPTY),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Chưa có tin nhắn mới ",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Bạn có thể xem tất cả tin nhắn ở đây",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
