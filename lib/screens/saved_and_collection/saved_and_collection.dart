import 'package:flutter/material.dart';
import 'package:happy_trip/res/dimens.dart';
import '../../res/res.dart';

class SavedAndCollectionScreen extends StatelessWidget {
  static const routeName = "/SavedAndCollectionScreen";
  const SavedAndCollectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Đã lưu"),
      ),
      body: Container(
        padding:
            const EdgeInsets.symmetric(horizontal: AppDimens.DEFAULT_PADDING_H),
        color: AppColors.blurGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.nearlyWhite,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: AppColors.deepGrey.withOpacity(0.2),
                      offset: Offset(0, 4))
                ],
              ),
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.all(AppDimens.DEFAULT_PADDING_H / 2),
              margin: const EdgeInsets.symmetric(
                  vertical: AppDimens.DEFAULT_MARGIN_V),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 120,
                          child: Text(
                            "Xem tất cả sản phẩm đã lưu",
                            style: TextStyle(color: AppColors.nearlyBlue),
                          ),
                        ),
                        Icon(AppIcons.forward2, color: AppColors.nearlyBlue),
                      ],
                    ),
                  )),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(5)),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(5)),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Bộ sưu tập",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
                //height: 300,
                child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: GridView.count(
                primary: false,
                crossAxisSpacing: 15,
                mainAxisSpacing: 5,
                childAspectRatio: 3 / 2,
                crossAxisCount: 2,
                children: List.generate(2, (index) {
                  return Container(
                    //height: 220,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(5)),

                    child: Column(
                      children: [],
                    ),
                  );
                }),
              ),
            )),
            Container(
              child: OutlinedButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    "xem tất cả",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
