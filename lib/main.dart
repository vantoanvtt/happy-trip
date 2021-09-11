import 'package:flutter/material.dart';
import 'package:happy_trip/res/theme_data.dart';
import 'package:happy_trip/screens/home/home_screen.dart';
import 'package:happy_trip/screens/transport_details/transport_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.themeData(context),
      home: TransportDetailsScreen(),
    );
  }
}
