import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:music_app/common/widgets/app_bar/app_bar.dart';
import 'package:music_app/core/configs/assets/app_images.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: Image.asset(AppImages.spotifyLogo, height: 40),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(20),
                _registerText(), 
                Gap(20),
                _fullName(context),
                ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _registerText() {
    return Text(
      'Register',
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    );
  }

  Widget _fullName(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Full Name'
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
}
