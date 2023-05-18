import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplasheContent extends StatelessWidget {
  const SplasheContent({
    super.key,
    this.text,
    this.image,
  });

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 1,
        ),
        Text(
          "TOKOTO",
          style: TextStyle(fontSize: 36.sp, color: kPrimaryColor),
        ),
        Text(text!),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image!,
          height: 256.h,
          width: 235.w,
        ),
      ],
    );
  }
}