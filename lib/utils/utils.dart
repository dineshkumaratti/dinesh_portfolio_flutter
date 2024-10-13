import 'package:flutter/material.dart';
import 'package:dinesh_portfolio_flutter/sections/about/about.dart';
import 'package:dinesh_portfolio_flutter/sections/contact/contact.dart';
import 'package:dinesh_portfolio_flutter/sections/home/home.dart';
import 'package:dinesh_portfolio_flutter/sections/portfolio/portfolio.dart';
import 'package:dinesh_portfolio_flutter/sections/services/services.dart';
import 'package:dinesh_portfolio_flutter/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';
  static const String logo1024 = 'assets/app/1024.png';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];

  static const List<String> socialLinks = [
    "https://facebook.com/atti.dineshkumar",
    "https://instagram.com/attidineshkumar",
    "https://twitter.com/dineshatti",
    "https://linkedin.com/in/dinesh-kumar-atti",
    "https://github.com/dineshkumaratti",
    "https://medium.com/@dineshkumar.atti1"
  ];

  static const String resume =
      'https://drive.google.com/file/d/1zdNLaLS4FvyMJSw9_Hxl72qQZcWiNU4z/view?usp=sharing';

  static const String gitHub = 'https://github.com/dineshkumaratti';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
