import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefuiltButton extends StatelessWidget {
  const DefuiltButton({
    super.key, 
    required this.text,
     this.onPressed,
  });

  final String text;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 46.h,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child:  Text(text,style: TextStyle(color: Colors.white,fontSize: 16.sp),),),
    );
  }
}