import 'package:flutter/material.dart';
import '../res/res.dart';
import 'package:happy_trip/screens/index.dart';

class BottomBarScreen extends StatefulWidget {
  static const routeName = '/BottomBarScreen';
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Map<String, Widget>>? _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreens(),
      },
      {
        'page': SavedAndCollectionScreen(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages![_selectedPageIndex]["page"],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: AppColors.deepGrey.withOpacity(0.4), blurRadius: 10)
        ]),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                AppIcons.home,
              ),
              label: 'Trang chủ',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                AppIcons.saved,
              ),
              label: 'Đã lưu',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                AppIcons.notifications,
              ),
              label: 'Thông báo',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                AppIcons.account,
              ),
              label: 'Tài khoản',
            ),
          ],
          currentIndex: _selectedPageIndex,
          selectedItemColor: AppColors.deepPink,
          unselectedItemColor: AppColors.deepGrey,
          onTap: _selectPage,
          iconSize: 30,
        ),
      ),
    );
  }
}
