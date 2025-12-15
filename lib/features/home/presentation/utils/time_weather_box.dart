import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/styles/app_text_styles.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/gen/colors.gen.dart';

class TimeWeatherBox extends StatelessWidget {
  const TimeWeatherBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("now", style: AppTextStyles.h3Body),
            SvgPicture.asset(Assets.svg.sunny, height: 100.h, width: 100.w),
            Text("19°"),
          ],
        ),
      ),
    );
  }
}
