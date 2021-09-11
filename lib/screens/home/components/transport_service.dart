import 'package:flutter/material.dart';
import 'package:happy_trip/models/transport_attr.dart';
import 'package:happy_trip/res/colors.dart';
import 'package:happy_trip/res/icons.dart';
import 'package:happy_trip/screens/home/components/x_w_item.dart';

class TransportService extends StatefulWidget {
  const TransportService({Key? key}) : super(key: key);

  @override
  _TransportServiceState createState() => _TransportServiceState();
}

class _TransportServiceState extends State<TransportService> {
  int _slectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    const List listCate = ["Nội thành", "Ngoại thành", "Liên tỉnh", "Vũng tàu"];

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Di chuyển mùa COVID-19",
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        "Đi lại dễ dàng và an toàn với các dịch vụ vận chuyển trên Happy trip",
                        maxLines: 2,
                        style: Theme.of(context).textTheme.caption,
                      )
                    ],
                  ),
                ),
                Center(
                  child: Icon(
                    AppIcons.forward,
                    size: 18,
                    color: AppColors.nearlyBlue,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            height: 60,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _slectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: index == _slectedIndex
                              ? AppColors.deepPink
                              : AppColors.blurGrey),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          listCate[index],
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  color: index == _slectedIndex
                                      ? AppColors.nearlyWhite
                                      : AppColors.deepPink),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            height: 240,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(
                                    TransportAttr.dataDemo[index].urlImg),
                                fit: BoxFit.cover)),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: AppColors.orange,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8))),
                                  child: Text(
                                      'Giảm ${TransportAttr.dataDemo[index].discount.toString()}%',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: AppColors.nearlyWhite),
                                      textAlign: TextAlign.center),
                                )),
                            Positioned(bottom: 20, right: 0, child: Container())
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                TransportAttr.dataDemo[index].description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            Text(
                              'VND ${TransportAttr.dataDemo[index].price.toStringAsFixed(3)}',
                              style: TextStyle(
                                  fontSize: 17, color: AppColors.nearlyOrange),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
