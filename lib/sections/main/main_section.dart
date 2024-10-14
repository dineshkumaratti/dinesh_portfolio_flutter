import 'package:dinesh_portfolio_flutter/animations/entrance_fader.dart';
import 'package:dinesh_portfolio_flutter/configs/app.dart';
import 'package:dinesh_portfolio_flutter/configs/configs.dart';
import 'package:dinesh_portfolio_flutter/provider/app_provider.dart';
import 'package:dinesh_portfolio_flutter/provider/drawer_provider.dart';
import 'package:dinesh_portfolio_flutter/provider/scroll_provider.dart';
import 'package:dinesh_portfolio_flutter/responsive/responsive.dart';
import 'package:dinesh_portfolio_flutter/utils/navbar_utils.dart';
import 'package:dinesh_portfolio_flutter/utils/utils.dart';
import 'package:dinesh_portfolio_flutter/widget/navbar_actions_button.dart';
import 'package:dinesh_portfolio_flutter/widget/navbar_logo.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:dinesh_portfolio_flutter/constants.dart';
import 'package:dinesh_portfolio_flutter/widget/arrow_on_top.dart';

part 'widgets/_navbar_desktop.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: false,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const _Body(),
            const ArrowOnTop(),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
