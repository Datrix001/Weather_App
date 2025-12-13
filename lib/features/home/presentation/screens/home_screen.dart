import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/core/styles/app_text_styles.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/gen/colors.gen.dart';
import 'package:weather_app/gen/fonts.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.svg.search, width: 30.w, height: 30.h),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.svg.menu, width: 30.w, height: 30.h),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.primary.withValues(alpha: 0.4),
              AppColors.secondary.withValues(alpha: 0.9),
            ],
            stops: [0.2, 0.9],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 100.h, left: 24.w, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Stockholm,\nSweden", style: AppTextStyles.h2),
              Text("Tues, Jun 20", style: AppTextStyles.h4),
              Row(
                children: [
                  SvgPicture.asset(
                    Assets.svg.cludy,
                    width: 200.w,
                    height: 200.h,
                  ),
                  Text("19", style: AppTextStyles.h1),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
