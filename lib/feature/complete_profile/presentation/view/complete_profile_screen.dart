import 'package:ecommerce/feature/complete_profile/presentation/view/widget/complete_profile_screen_body.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign up',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: CompleteProfileScreenBody(),
    );
  }
}
