import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/core/styles/app_text_styles.dart';
import 'package:weather_app/features/home/presentation/utils/time_weather_box.dart';
import 'package:weather_app/features/home/presentation/utils/weather_box.dart';
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
    final bottomInset = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.svg.search, width: 30.w, height: 30.h),
        ),
        title: Title(
          color: AppColors.black,
          child: SvgPicture.asset(Assets.svg.point, height: 8.h),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.svg.menu, width: 30.w, height: 30.h),
          ),
        ],
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
              top: 85.h,
              left: 24.w,
              right: 24.w,
              bottom: bottomInset + 24.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Stockholm,\nSweden", style: AppTextStyles.h2),
                Text("Tues, Jun 20", style: AppTextStyles.h4),
                Transform.translate(
                  offset: Offset(-24.w, 0),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            left: 4,
                            top: 6,
                            child: SvgPicture.asset(
                              Assets.svg.cludy,
                              width: 200.w,
                              height: 200.h,
                              colorFilter: ColorFilter.mode(
                                AppColors.black.withAlpha(10),
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            Assets.svg.cludy,
                            width: 200.w,
                            height: 200.h,
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: "19", style: AppTextStyles.h1),
                                WidgetSpan(
                                  child: Transform.translate(
                                    offset: Offset(3.w, -60.h),
                                    child: Text("°C", style: AppTextStyles.h3),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Transform.translate(
                            offset: Offset(-15.w, -20.h),
                            child: Text("Rainy", style: AppTextStyles.h3),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                WeatherBox(weatherType: WeatherType.rainfall, weatherInfo: '3'),
                10.verticalSpace,
                WeatherBox(weatherType: WeatherType.wind, weatherInfo: '19'),
                10.verticalSpace,
                WeatherBox(
                  weatherType: WeatherType.humidity,
                  weatherInfo: '64',
                ),
                40.verticalSpace,
                Row(
                  children: [
                    20.horizontalSpace,
                    TimeWeatherBox(current: false, weather: Weather.sunny),
                    20.horizontalSpace,
                    TimeWeatherBox(current: true, weather: Weather.sundy),
                    20.horizontalSpace,
                    TimeWeatherBox(current: false, weather: Weather.rainy),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
