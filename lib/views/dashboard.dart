import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/adaptive_layout.dart';
import 'package:responsive_dashboard/widget/views/dashboard_desktopLayout.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          MobileLayout: (context) => SizedBox(),
          TabletLayout: (context) => SizedBox(),
          DesktopLayout: (context) => DashboardDesktoplayout()),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

