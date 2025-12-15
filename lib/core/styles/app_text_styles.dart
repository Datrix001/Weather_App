import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/gen/colors.gen.dart';
import 'package:weather_app/gen/fonts.gen.dart';

final class AppTextStyles {
  AppTextStyles._();
  static final h1 = TextStyle(
    fontFamily: FontFamily.inter,
    fontSize: 100.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
  );

  static final h2 = TextStyle(
    fontFamily: FontFamily.inter,
    fontSize: 35.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static final h3 = TextStyle(
    fontFamily: FontFamily.inter,
    fontSize: 18.sp,
    fontWeight: FontWeight.w100,
    color: AppColors.black,
  );
  static final h4 = TextStyle(
    fontFamily: FontFamily.inter,
    fontSize: 15.sp,
    fontWeight: FontWeight.w100,
    color: AppColors.black.withAlpha(40),
  );

  static final h3Body = TextStyle(
    fontFamily: FontFamily.inter,
    fontSize: 15.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );
}
