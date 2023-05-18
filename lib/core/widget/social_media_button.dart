import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
     required this.onTap, 
     required this.icon,
  });

  final void Function() onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        padding: EdgeInsets.all(12.w),
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        height: 40.h,
        width: 40.w,
        decoration:const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xfff5f6f9),
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}