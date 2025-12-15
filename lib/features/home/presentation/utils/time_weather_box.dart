import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/styles/app_text_styles.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/gen/colors.gen.dart';

class TimeWeatherBox extends StatelessWidget {
  final bool? current;
  final Weather weather;
  const TimeWeatherBox({
    super.key,
    required this.current,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      decoration: BoxDecoration(
        color: current!
            ? AppColors.white.withValues(alpha: 0.8)
            : AppColors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("now", style: AppTextStyles.h3Body),
            6.verticalSpace,
            SvgPicture.asset(weather.icon, height: 70.h, fit: BoxFit.contain),
            Text("19°"),
          ],
        ),
      ),
    );
  }
}

extension weather on Weather {
  String get icon {
    switch (this) {
      case Weather.cloud:
        return Assets.svg.cloudy;
      case Weather.rainy:
        return Assets.svg.rainy;
      case Weather.cludy:
        return Assets.svg.cludy;
      case Weather.sundy:
        return Assets.svg.shade;
      case Weather.sunny:
        return Assets.svg.sunny;
    }
  }
}

enum Weather { rainy, cludy, cloud, sunny, sundy }
