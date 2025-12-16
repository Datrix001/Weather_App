import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/styles/app_text_styles.dart';
import 'package:weather_app/features/home/presentation/utils/forecast_box.dart';
import 'package:weather_app/features/home/presentation/utils/time_weather_box.dart';
import 'package:weather_app/features/home/presentation/utils/tommorow_box.dart';
import 'package:weather_app/gen/colors.gen.dart';

class ForecastScreen extends StatefulWidget {
  const ForecastScreen({super.key});

  @override
  State<ForecastScreen> createState() => _ForecastScreenState();
}

class _ForecastScreenState extends State<ForecastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        automaticallyImplyLeading: true,
        title: Title(
          color: AppColors.black,
          child: Text("Next 7 days", style: AppTextStyles.h3),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,

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
            padding: EdgeInsets.only(
              left: 24.w,
              right: 24.w,
              top: 100.h,
              bottom: 24.h,
            ),
            child: Column(
              children: [
                TommorowBox(),
                20.verticalSpace,
                ForecastBox(day: "Monday", temp: "24", icon: Weather.cloud),
                ForecastBox(day: "Tuesday", temp: "20", icon: Weather.sundy),
                ForecastBox(day: "Wednesday", temp: "23", icon: Weather.sundy),
                ForecastBox(day: "Thrusday", temp: "21", icon: Weather.rainy),
                ForecastBox(day: "Friday", temp: "18", icon: Weather.sundy),
                ForecastBox(day: "Saturday", temp: "16", icon: Weather.cloud),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
