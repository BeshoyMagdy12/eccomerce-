import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/utilites/app_route.dart';
import 'package:ecommerce/feature/splashe/presentation/splashe_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme:const AppBarTheme(
              color: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              brightness: Brightness.light,
            ),
            scaffoldBackgroundColor: Colors.white,
            primarySwatch: Colors.orange,
            textTheme:const TextTheme(
            bodyText1: TextStyle(color: kTextColor),
            bodyText2: TextStyle(color: kTextColor),
            ),
          ),
          // home:const SplasheScreen(),
          initialRoute: SplasheScreen.routeName,
          routes: appRoutes,
        );
      },
    );
  }
}