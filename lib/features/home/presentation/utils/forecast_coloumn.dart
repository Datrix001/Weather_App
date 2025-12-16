import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/styles/app_text_styles.dart';
import 'package:weather_app/features/home/presentation/utils/weather_box.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/gen/colors.gen.dart';

class ForecastColoumn extends StatelessWidget {
  final WeatherType weatherType;
  final String info;

  const ForecastColoumn({
    super.key,
    required this.weatherType,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    final icon = SvgPicture.asset(weatherType.icon, height: 100.h);
    return Column(
      children: [
        weatherType.needsBackground
            ? Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20),
                child: Transform.translate(
                  offset: Offset(0, -7),
                  child: Container(
                    height: 50.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: icon,
                  ),
                ),
              )
            : icon,
        !weatherType.needsBackground
            ? Transform.translate(
                offset: Offset(0, -20),
                child: Text(
                  "$info${weatherType.unit}",
                  style: AppTextStyles.h3Body,
                ),
              )
            : Transform.translate(
                offset: Offset(0, 5),
                child: Text(
                  "$info${weatherType.unit}",
                  style: AppTextStyles.h3Body,
                ),
              ),
      ],
    );
  }
}
