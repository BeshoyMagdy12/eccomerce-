import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widget/defuilt_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPScreenBody extends StatelessWidget {
  const OTPScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Text(
              'OTP verificaion',
              style: headingStyle,
            ),
            const Text('we sent code +1 898 860 ***'),
            const OTPTimer(),
            const Spacer(),
            const OTPForm(),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

class OTPTimer extends StatelessWidget {
  const OTPTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('this code will expired in'),
        SizedBox(
          width: 5.w,
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (ctx, value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}

class OTPForm extends StatefulWidget {
  const OTPForm({super.key});

  @override
  State<OTPForm> createState() => _OTPForm();
}

class _OTPForm extends State<OTPForm> {
  late FocusNode focus2Node;
  late FocusNode focus3Node;
  late FocusNode focus4Node;

  @override
  void initState() {
    focus2Node = FocusNode();
    focus3Node = FocusNode();
    focus4Node = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    focus2Node.dispose();
    focus3Node.dispose();
    focus4Node.dispose();
    super.dispose();
  }

  void nextNode({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60.sp,
                child: TextFormField(
                  autofocus: true,
                  onChanged: (value) {
                    nextNode(value: value, focusNode: focus2Node);
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.sp),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15.w),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 60.sp,
                child: TextFormField(
                  focusNode: focus2Node,
                  autofocus: true,
                  onChanged: (value) {
                    nextNode(value: value, focusNode: focus3Node);
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.sp),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15.w),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 60.sp,
                child: TextFormField(
                  focusNode: focus3Node,
                  autofocus: true,
                  onChanged: (value) {
                    nextNode(value: value, focusNode: focus4Node);
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.sp),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15.w),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 60.sp,
                child: TextFormField(
                  focusNode: focus4Node,
                  autofocus: true,
                  onChanged: (value) {
                    focus4Node.unfocus();
                  },
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.sp),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15.w),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: kTextColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70.h,
          ),
          DefuiltButton(
            text: 'continue',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
