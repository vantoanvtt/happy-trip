import 'package:flutter/material.dart';
import '../../res/res.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blurGrey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            title: Text("Tài khoản"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(AppIcons.setting)),
              IconButton(onPressed: () {}, icon: Icon(AppIcons.chat))
            ],
            expandedHeight: 120,
            pinned: true,
            floating: true,
            flexibleSpace: Container(
              //color: Colors.yellow,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    top: 90,
                    left: MediaQuery.of(context).size.width * 0.05,
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.DEFAULT_PADDING_H),
                      decoration: BoxDecoration(
                          color: AppColors.nearlyWhite,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      spreadRadius: 1,
                                      color:
                                          AppColors.deepGrey.withOpacity(0.3))
                                ]),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Chu Văn Toàn"),
                              Text(
                                "Đăng nhập bằng email",
                                style: Theme.of(context).textTheme.caption,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "XEM TRANG CÁ NHÂN",
                                style: TextStyle(color: AppColors.nearlyBlue),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.DEFAULT_PADDING_H),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(
                        vertical: AppDimens.DEFAULT_MARGIN_V),
                    child: ListTile(
                      leading: Icon(AppIcons.card),
                      title: Text('Thẻ của tôi'),
                      subtitle: Text(
                        'Thanh toán siêu tốc chỉ 1 chạm',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      trailing: Icon(
                        AppIcons.forward,
                        color: AppColors.nearlyBlue,
                        size: 18,
                      ),
                    ),
                  ),
                  Text(
                    "Phần thưởng của tôi",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(AppIcons.points),
                      title: Text('0 điểm'),
                      subtitle: Text(
                        'Tích điểm và nhận giảm giá cho giao dịch tiếp theo của bạn!',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      isThreeLine: true,
                      trailing: Icon(
                        AppIcons.forward,
                        color: AppColors.nearlyBlue,
                        size: 18,
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(AppIcons.offer),
                      title: Text('Mã giảm giá của tôi'),
                      subtitle: Text(
                        'Xem danh sách mã giảm giá',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      trailing: Icon(
                        AppIcons.forward,
                        color: AppColors.nearlyBlue,
                        size: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tính năng dành cho thành viên",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(AppIcons.points),
                      title: Text('Hoàn tiền của tôi'),
                      subtitle: Text(
                        'Quản lý các yêu cầu hoàn tiền trong cùng một mục',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      isThreeLine: true,
                      trailing: Icon(
                        AppIcons.forward,
                        color: AppColors.nearlyBlue,
                        size: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(AppIcons.offer),
                      title: Text('Trung tâm hỗ trợ'),
                      subtitle: Text(
                        'Nơi giải đáp mọi thắc mắc của bạn',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      trailing: Icon(
                        AppIcons.forward,
                        color: AppColors.nearlyBlue,
                        size: 18,
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(AppIcons.offer),
                      title: Text('Cài đặt'),
                      subtitle: Text(
                        'Xem và tùy chỉnh cài đặt cho tài khoản',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      trailing: Icon(
                        AppIcons.forward,
                        color: AppColors.nearlyBlue,
                        size: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
