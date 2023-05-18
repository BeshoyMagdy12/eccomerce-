import 'package:ecommerce/feature/register/presentation/view/widget/register_screen_body.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
      body: RegisterScreenBody(),
    );
  }
}
