// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:music_app/common/widgets/bottons/basic_app_botton.dart';
import 'package:music_app/core/configs/assets/app_images.dart';
import 'package:music_app/core/configs/assets/app_vectors.dart';
import 'package:music_app/core/configs/theme/app_colors.dart';
import 'package:music_app/presentation/auth/page/signuporsignin.dart';
import 'package:music_app/presentation/choose_mode/bloc/theme_cubit.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.intro),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: [
                Gap(50),
                //SvgPicture.asset(AppVectors.logo),
                Image.asset(AppVectors.logo),
                Spacer(),
                Text(
                  'Choose Mode',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xff30393c).withOpacity(0.5),
                                shape: BoxShape.circle,
                              ),
                              child: GestureDetector(
                                onTap: context.read<ThemeCubit>().updateTheme(
                                  ThemeMode.dark,
                                ),
                                child: Icon(
                                  Icons.nightlight_outlined,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                              //SvgPicture.asset(fit: BoxFit.none, AppVectors.sun),
                            ),
                          ),
                        ),
                        Gap(30),
                        Text(
                          'Dark Mode',
                          style: TextStyle(
                            color: AppColor.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Gap(40),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: context.read<ThemeCubit>().updateTheme(
                            ThemeMode.light,
                          ),
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xff30393c).withOpacity(0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.wb_sunny_outlined,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Gap(30),
                        Text(
                          'Light Mode',
                          style: TextStyle(
                            color: AppColor.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(40),
                BasicAppBotton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUporSignInPage(),
                      ),
                    );
                  },
                  title: 'Continue',
                ),
                Gap(40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
