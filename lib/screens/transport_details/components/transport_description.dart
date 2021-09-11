import 'package:flutter/material.dart';
import 'package:happy_trip/res/colors.dart';
import 'package:happy_trip/res/dimens.dart';
import 'package:happy_trip/res/icons.dart';
import 'package:happy_trip/res/images.dart';

class TransportDes extends StatelessWidget {
  const TransportDes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.DEFAULT_PADDING_H),
            //color: Colors.yellow,
            //height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Phương tiện di chuyển",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.nearlyWhite,
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.deepGrey.withOpacity(0.4),
                            offset: Offset(0, 2),
                            blurRadius: 2)
                      ]),
                  //color: Colors.blueAccent,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.only(right: 40),
                            //color: Colors.red,
                            child: Text(
                              "[Nội thành] Xe buýt miễn phí chở khách hoàn thành cách ly điều trị COVID | SACO TRAVEL",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(fontSize: 22),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            //color: Colors.redAccent,
                            child: Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        AppIcons.location,
                                        color: AppColors.deepGrey,
                                        size: 18,
                                      ),
                                      Text(
                                        "Tan binh district, Ho Chi Minh city",
                                        style:
                                            Theme.of(context).textTheme.caption,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 25),
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  AppImages.GG_MAP,
                                                ),
                                                fit: BoxFit.cover)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: AppDimens.DEFAULT_PADDING_H),
            height: 100,
            padding: const EdgeInsets.all(AppDimens.DEFAULT_PADDING_H),
            width: double.infinity,
            color: AppColors.nearlyWhite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                litleItem(context, "còn vé hôm nay", AppIcons.calendar),
                litleItem(context, "giá đặc biệt", AppIcons.offer),
                litleItem(context, "xác nhận tức thì", AppIcons.power),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            color: AppColors.nearlyWhite,
            padding: const EdgeInsets.all(AppDimens.DEFAULT_PADDING_H),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Điểm nổi bật",
                  style: Theme.of(context).textTheme.headline5,
                ),
                paragraph(context,
                    "Với đầy đủ thông tin về giá và loại xe phục vụ vận chuyển mùa dịch được đăng tải tại VeXeRe, mong rằng bạn có thể dễ dàng và thuận lợi lựa chọn, đặt xe, liên hệ thuê xe và thanh toán trực tuyến. "),
                paragraph(context,
                    "Để bảo vệ mình và mọi người xung quanh, hãy thực hiện các biện pháp phòng dịch và chuẩn bị những yêu cầu về giấy tờ, thủ tục từ nhà xe cung cấp dịch vụ bạn nhé!")
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            color: AppColors.nearlyWhite,
            padding: const EdgeInsets.all(AppDimens.DEFAULT_PADDING_H),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bạn sẽ trải nghiệm",
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  "THÔNG TIN CẦN BIẾT KHI ĐẶT XE: ",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(decoration: TextDecoration.underline),
                ),
                paragraph(context,
                    "Với đầy đủ thông tin về giá và loại xe phục vụ vận chuyển mùa dịch được đăng tải tại VeXeRe, mong rằng bạn có thể dễ dàng và thuận lợi lựa chọn, đặt xe, liên hệ thuê xe và thanh toán trực tuyến. "),
                paragraph(context,
                    "Để bảo vệ mình và mọi người xung quanh, hãy thực hiện các biện pháp phòng dịch và chuẩn bị những yêu cầu về giấy tờ, thủ tục từ nhà xe cung cấp dịch vụ bạn nhé!")
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding paragraph(BuildContext context, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, right: 5, left: 5),
            child: Icon(
              AppIcons.dot,
              size: 5,
            ),
          ),
          Expanded(
            child: Text(
              content,
              style:
                  Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

  Row litleItem(BuildContext context, String title, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: AppColors.deepPink,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
