import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:dinesh_portfolio_flutter/configs/configs.dart';
import 'package:dinesh_portfolio_flutter/constants.dart';
import 'package:dinesh_portfolio_flutter/provider/app_provider.dart';
import 'package:dinesh_portfolio_flutter/responsive/responsive.dart';
import 'package:dinesh_portfolio_flutter/utils/services_utils.dart';
import 'package:dinesh_portfolio_flutter/utils/utils.dart';
import 'package:dinesh_portfolio_flutter/widget/custom_text_heading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

part 'services_desktop.dart';
part 'services_mobile.dart';

part 'widgets/_services_card.dart';
part 'widgets/_services_card_back.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
