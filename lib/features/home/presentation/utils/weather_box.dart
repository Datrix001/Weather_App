import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/styles/app_text_styles.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/gen/colors.gen.dart';

// I need to add WeatherType model so that it avoid repetion of switch case

class WeatherBox extends StatelessWidget {
  final WeatherType weatherType;
  final String weatherInfo;
  const WeatherBox({
    super.key,
    required this.weatherType,
    required this.weatherInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(19),
      ),
      height: 100.h,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 50.w),
        child: Row(
          children: [
            SizedBox(
              height: 50.h,
              width: 50.w,
              child: WeatherType == WeatherType.humidity
                  ? SvgPicture.asset(weatherType.icon, height: 60.h)
                  : Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SvgPicture.asset(
                        weatherType.icon,
                        height: 60.h,
                        fit: BoxFit.contain,
                      ),
                    ),
            ),
            12.horizontalSpace,
            Text(weatherType.label, style: AppTextStyles.h3Body),
            const Spacer(),
            Text(
              "$weatherInfo${weatherType.unit}",
              style: AppTextStyles.h3Body,
            ),
          ],
        ),
      ),
    );
  }
}

enum WeatherType { rainfall, wind, humidity }

extension WeatherTypeConfig on WeatherType {
  String get label {
    switch (this) {
      case WeatherType.rainfall:
        return "Rainfall";
      case WeatherType.wind:
        return "Wind";
      case WeatherType.humidity:
        return "Humidity";
    }
  }

  String get unit {
    switch (this) {
      case WeatherType.rainfall:
        return "cm";
      case WeatherType.wind:
        return "km/h";
      case WeatherType.humidity:
        return "%";
    }
  }

  String get icon {
    switch (this) {
      case WeatherType.rainfall:
        return Assets.svg.rainfall;
      case WeatherType.wind:
        return Assets.svg.wind;
      case WeatherType.humidity:
        return Assets.svg.humidity;
    }
  }
}
