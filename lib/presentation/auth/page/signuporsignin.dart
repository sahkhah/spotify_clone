import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:music_app/common/helper/is_dark_mode.dart';
import 'package:music_app/common/widgets/app_bar/app_bar.dart';
import 'package:music_app/common/widgets/bottons/basic_app_botton.dart';
import 'package:music_app/core/configs/assets/app_images.dart';
import 'package:music_app/core/configs/lorem_generator/lorem_generator.dart';
import 'package:music_app/core/configs/theme/app_colors.dart';
import 'package:music_app/presentation/auth/page/signup.dart';

class SignUporSignInPage extends StatelessWidget {
  const SignUporSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BasicAppBar(),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Gap(50),
                //SvgPicture.asset(AppVectors.logo),
                Image.asset(AppImages.spotifyLogo, height: 80, width: 300),
                Gap(30),
                Text(
                  'Enjoy listening to music',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: context.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                Gap(20),
                Text(
                  LoremGenerator.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: AppColor.grey,
                  ),
                ),
                Gap(40),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: BasicAppBotton(
                        onPressed: () {
                           Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                        },
                        title: 'Register',
                      ),
                    ),
                    Gap(20),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:
                                context.isDarkMode
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
