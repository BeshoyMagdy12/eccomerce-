import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widget/defuilt_button.dart';
import 'package:ecommerce/feature/signin/presentation/view/sign_in_screen.dart';
import 'package:ecommerce/feature/splashe/presentation/widget/splashe_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplasheScreenBody extends StatefulWidget {
  const SplasheScreenBody({super.key});

  @override
  State<SplasheScreenBody> createState() => _SplasheScreenBodyState();
}

class _SplasheScreenBodyState extends State<SplasheScreenBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (ctx, idx) => SplasheContent(
                      text: splashData[idx]['text'],
                      image: splashData[idx]['image'])),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => Container(
                          height: 6.h,
                          width: currentPage == index ? 20.w : 6,
                          margin: EdgeInsets.only(right: 5.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: currentPage == index
                                ? kPrimaryColor
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    DefuiltButton(
                      text: 'continue',
                      onPressed: () {
                        Navigator.pushNamed(context,SignInScreen.routeName );
                      },
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




