import 'package:flutter/material.dart';
import 'package:portfolio/components/Constants.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key key,
    @required this.mobileBody,
    this.tabletBody,
    this.desktopBody,
  }) : super(key: key);

  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, dimens) {
      if (dimens.maxWidth < kTabletBreakpoint) {
        return mobileBody;
      } else {
        return desktopBody;
      }
    });
  }
}

class CenteredView extends StatelessWidget {
  final Widget child;

  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
