import 'package:flutter/material.dart';
import 'package:dinesh_portfolio_flutter/configs/configs.dart';
import 'package:dinesh_portfolio_flutter/provider/app_provider.dart';

import 'package:provider/provider.dart';

class ProjectCard extends StatefulWidget {
  final String? banner;
  final String? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;

  const ProjectCard({
    super.key,
    this.banner,
    this.projectIcon,
    this.projectLink,
    this.projectIconData,
    required this.projectTitle,
    required this.projectDescription,
  });
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        margin: Space.h,
        padding: Space.all(),
        width: AppDimensions.normalize(150),
        height: AppDimensions.normalize(100),
        decoration: BoxDecoration(
          color: appProvider.isDark ? Colors.grey[900] : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: AppTheme.c!.primary!.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.projectIcon != null
                ? (width > 1135 || width < 950)
                    ? Image.asset(
                        widget.projectIcon!,
                        height: height * 0.05,
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            widget.projectIcon!,
                            height: height * 0.03,
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            widget.projectTitle,
                            style: AppText.b2b,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                : Container(),
            widget.projectIconData != null
                ? Icon(
                    widget.projectIconData,
                    color: AppTheme.c!.primary!,
                    size: height * 0.1,
                  )
                : Container(),
            (width > 1135 || width < 950)
                ? SizedBox(
                    height: height * 0.02,
                  )
                : const SizedBox(),
            (width > 1135 || width < 950)
                ? Text(
                    widget.projectTitle,
                    style: AppText.b2b,
                    textAlign: TextAlign.center,
                  )
                : Container(),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              widget.projectDescription,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 20,
            ),
            SizedBox(
              height: height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
