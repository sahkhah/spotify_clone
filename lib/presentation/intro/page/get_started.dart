import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lorem_ipsum_generator/lorem_ipsum_generator.dart';
import 'package:music_app/common/widgets/app_bar/app_bar.dart';
import 'package:music_app/common/widgets/bottons/basic_app_botton.dart';
import 'package:music_app/core/configs/assets/app_images.dart';
import 'package:music_app/core/configs/theme/app_colors.dart';
import 'package:music_app/presentation/choose_mode/page/choose_mode.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    String text = LoremIpsumGenerator.generate(
      paragraphs: 1,
      wordsPerParagraph: 20,
    );
    return Scaffold(
      body: Stack(
        children: [
          BasicAppBar(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
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
              color: Colors.black.withOpacity(0.15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Gap(200),
                  //SvgPicture.asset(AppVectors.logo),
                  Image.asset(AppImages.spotifyLogo, height: 100, width: 300),
                  Spacer(flex: 2),
                  Text(
                    'Enjoy listening to music',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Gap(20),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey,
                    ),
                  ),
                  Gap(20),
                  BasicAppBotton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseModePage(),
                        ),
                      );
                    },
                    title: 'Get Started',
                  ),
                  Gap(50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
