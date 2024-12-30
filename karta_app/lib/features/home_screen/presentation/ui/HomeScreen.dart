import 'package:flutter/material.dart';
import 'package:karta_app/core/utils/TextStyles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karta_app/core/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Text(
              "welcome to home",
              style: getTextStyle(
                color: mainColor,
                fontSize: 14.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
