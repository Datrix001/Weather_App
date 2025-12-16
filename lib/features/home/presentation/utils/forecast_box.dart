import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/core/styles/app_text_styles.dart';
import 'package:weather_app/features/home/presentation/utils/time_weather_box.dart';
import 'package:weather_app/gen/colors.gen.dart';

class ForecastBox extends StatelessWidget {
  final String day;
  final String temp;
  final Weather icon;
  const ForecastBox({
    super.key,
    required this.day,
    required this.temp,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white.withAlpha(50),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Row(
            children: [
              Text(day, style: AppTextStyles.h3Body),
              Spacer(),
              Text("$temp°", style: AppTextStyles.h3Body),
              SvgPicture.asset(icon.icon, height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}
