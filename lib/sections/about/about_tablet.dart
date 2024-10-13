import 'package:dinesh_portfolio_flutter/configs/configs.dart';
import 'package:dinesh_portfolio_flutter/utils/about_utils.dart';
import 'package:dinesh_portfolio_flutter/utils/utils.dart';

import 'package:dinesh_portfolio_flutter/widget/custom_text_heading.dart';
import 'package:flutter/material.dart';
import 'package:dinesh_portfolio_flutter/constants.dart';
import 'package:dinesh_portfolio_flutter/widget/about_me_data.dart';
import 'package:dinesh_portfolio_flutter/widget/tech_widget.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: CustomSectionHeading(
              text: '\nAbout Me',
            ),
          ),
          const Center(
            child: CustomSectionSubHeading(
              text: 'Get to know me :)',
            ),
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.mobilePhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Who am I?",
            style: AppText.b2!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y1!,
          Text(
            AboutUtils.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            'Technologies I have worked with:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: kTools
                  .map(
                    (e) => ToolTechWidget(techName: e),
                  )
                  .toList(),
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutMeData(
                    data: "Name",
                    information: "Dinesh Kumar Atti",
                  ),
                  AboutMeData(
                    data: "Age",
                    information: "25",
                  ),
                ],
              ),
              SizedBox(
                width: width > 710 ? width * 0.2 : width * 0.05,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutMeData(
                    data: "Email",
                    information: "dineshkumar.atti1@gmail.com",
                  ),
                  AboutMeData(
                    data: "From",
                    information: "Vijayawada, Andhra Pradesh",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
