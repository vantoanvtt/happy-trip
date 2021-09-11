import 'package:flutter/material.dart';
import 'package:happy_trip/res/colors.dart';
import 'package:happy_trip/res/icons.dart';

class TravelExperience extends StatelessWidget {
  const TravelExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    "Bí kíp du lịch",
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    "Chơi - ăn - ở như người địa phương",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              height: 228,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          height: 150,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://dulichtoday.vn/wp-content/uploads/2019/01/choi-gi-o-da-lat-vuot-thac.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: new ColorFilter.mode(
                                    AppColors.blurGrey, BlendMode.dstATop)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                right: 0,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      AppIcons.bookmark,
                                      color: AppColors.nearlyWhite,
                                      size: 30,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          width: 300,
                          child: Text(
                              "Các hoạt động cảm giác mạnh trên đà lạt bạn có biết không bạn có thể tha hồ trải nghiệm",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyText2),
                        )
                      ],
                    );
                  }),
            )
          ],
        ));
  }
}
