import 'package:flutter/material.dart';
import 'package:happy_trip/screens/notification/components/notification_empty.dart';
import '../../res/res.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông báo"),
      ),
      body: NotificationEmpty(),
    );
  }
}
