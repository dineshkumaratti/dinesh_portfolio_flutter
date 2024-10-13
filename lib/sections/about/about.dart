import 'package:flutter/material.dart';
import 'package:dinesh_portfolio_flutter/responsive/responsive.dart';
import 'package:dinesh_portfolio_flutter/sections/about/about_desktop.dart';
import 'package:dinesh_portfolio_flutter/sections/about/about_mobile.dart';
import 'package:dinesh_portfolio_flutter/sections/about/about_tablet.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: AboutTab(),
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
