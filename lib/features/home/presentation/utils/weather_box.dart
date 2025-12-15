import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/styles/app_text_styles.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/gen/colors.gen.dart';

class WeatherBox extends StatelessWidget {
  const WeatherBox({super.key});

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
            SvgPicture.asset(Assets.svg.rainfall, height: 100.h),
            Text("Rainfall", style: AppTextStyles.h3Body),
            Spacer(),
            Text("3cm", style: AppTextStyles.h3Body),
          ],
        ),
      ),
    );
  }
}
