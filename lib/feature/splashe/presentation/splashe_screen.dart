import 'package:ecommerce/feature/splashe/presentation/widget/splash_screen_body.dart';
import 'package:flutter/material.dart';


class SplasheScreen extends StatelessWidget {
  const SplasheScreen({super.key});
  static String routeName='/splashe';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplasheScreenBody(),
    );
  }
}