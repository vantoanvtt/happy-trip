import 'package:flutter/material.dart';
import 'package:happy_trip/res/colors.dart';
import 'package:happy_trip/res/icons.dart';

class XWItem extends StatelessWidget {
  //const XWItem({Key? key}) : super(key: key);
  final IconData icon;
  final String title;
  XWItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 2),
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Icon(
              icon,
              size: 40,
              color: AppColors.nearlyPink2,
            ),
          ),
          Container(
            width: 80,
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
