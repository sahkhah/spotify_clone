import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lorem_ipsum_generator/lorem_ipsum_generator.dart';
import 'package:music_app/core/configs/assets/app_images.dart';
import 'package:music_app/core/configs/assets/app_vectors.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    String text = LoremIpsumGenerator.generate(paragraphs: 1);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.intro),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                //SvgPicture.asset(AppVectors.logo),
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(AppVectors.logo),
                ),
                Spacer(),
                Text(
                  'Enjoy listening to music',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Gap(10),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.15),
            ),
          ),
        ],
      ),
    );
  }
}
