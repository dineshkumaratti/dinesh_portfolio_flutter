import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:dinesh_portfolio_flutter/configs/configs.dart';

import 'package:dinesh_portfolio_flutter/utils/utils.dart';
import 'package:dinesh_portfolio_flutter/widget/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width <= 375 ? size.height * 1.1 : size.height * 0.90,
      child: Container(
        margin: EdgeInsets.fromLTRB(
          AppDimensions.normalize(10),
          AppDimensions.normalize(40),
          0,
          0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "HEY THERE!! ",
                  style: AppText.b2!.copyWith(
                    fontFamily: 'Montserrat',
                  ),
                ),
                Space.x!,
                Image.asset(
                  StaticUtils.hi,
                  height: AppDimensions.normalize(10),
                ),
              ],
            ),
            Space.y!,
            Text(
              "WELCOME TO MY PORTFOLIO!!",
              style: AppText.h3!.copyWith(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w100,
              ),
            ),
            Space.y!,
            Text(
              "Dinesh Kumar Atti",
              style: AppText.h3b!.copyWith(
                height: 1,
              ),
            ),
            Space.y!,
            Row(
              children: [
                Icon(
                  Icons.play_arrow_rounded,
                  color: AppTheme.c!.primary!,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      ' Mobile App Developer',
                      speed: const Duration(milliseconds: 50),
                      textStyle: AppText.b1,
                    ),
                    TyperAnimatedText(
                      ' Flutter Developer',
                      speed: const Duration(milliseconds: 50),
                      textStyle: AppText.b1,
                    ),
                    TyperAnimatedText(
                      ' Windows App Developer',
                      speed: const Duration(milliseconds: 50),
                      textStyle: AppText.b1,
                    ),
                    TyperAnimatedText(
                      ' Web App Developer)',
                      speed: const Duration(milliseconds: 50),
                      textStyle: AppText.b1,
                    ),
                  ],
                  isRepeatingAnimation: true,
                ),
              ],
            ),
            Space.y!,
            const SocialLinks(),
            Space.y!,
            Align(
              alignment: Alignment.centerRight,
              child: Opacity(
                opacity: 0.9,
                child: Image.asset(
                  StaticUtils.blackWhitePhoto,
                  height: AppDimensions.normalize(150),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
