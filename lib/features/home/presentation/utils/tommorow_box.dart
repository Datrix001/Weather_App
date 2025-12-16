import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/styles/app_text_styles.dart';
import 'package:weather_app/features/home/presentation/utils/forecast_coloumn.dart';
import 'package:weather_app/features/home/presentation/utils/weather_box.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/gen/colors.gen.dart';

class TommorowBox extends StatelessWidget {
  const TommorowBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220.h,
      decoration: BoxDecoration(
        color: AppColors.white.withAlpha(98),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
            child: Row(
              children: [
                Text("Tommorow", style: AppTextStyles.h3Body),
                Spacer(),
                Text("22 °", style: AppTextStyles.h3Body),
                SvgPicture.asset(Assets.svg.cludy, height: 80.h),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Row(
              children: [
                ForecastColoumn(weatherType: WeatherType.humidity, info: '2'),
                ForecastColoumn(weatherType: WeatherType.rainfall, info: '55'),
                ForecastColoumn(weatherType: WeatherType.wind, info: '10'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
