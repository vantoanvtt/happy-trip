import 'package:flutter/material.dart';
import 'package:happy_trip/res/theme_data.dart';
import 'package:happy_trip/screens/bottom_bar.dart';
import 'package:happy_trip/screens/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Trip',
      theme: AppTheme.themeData(context),
      home: BottomBarScreen(),
      routes: {
        BottomBarScreen.routeName: (context) => BottomBarScreen(),
        HomeScreens.routeName: (context) => HomeScreens(),
        TransportDetailsScreen.routeName: (context) => TransportDetailsScreen(),
        SavedAndCollectionScreen.routeName: (context) =>
            SavedAndCollectionScreen(),
      },
    );
  }
}
