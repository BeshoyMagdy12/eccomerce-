import 'package:ecommerce/core/widget/social_media_button.dart';
import 'package:ecommerce/feature/signin/presentation/view/widget/sign_in_screen_body.dart';
import 'package:flutter/material.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
            SocialMediaButton(
      icon:'assets/icons/google-icon.svg' ,
      onTap: () {
        
      },
    ),
    SocialMediaButton(
      icon:'assets/icons/facebook-2.svg' ,
      onTap: () {
        
      },
    ),
       SocialMediaButton(
      icon:'assets/icons/twitter.svg' ,
      onTap: () {
        
      },
    ),
      ],
    );
  }
}