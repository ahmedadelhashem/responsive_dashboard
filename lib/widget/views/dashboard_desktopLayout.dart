import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/views/customdrawer.dart';

class DashboardDesktoplayout extends StatelessWidget {
  const DashboardDesktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
     Expanded(child: Customdrawer())
    ],);
  }
}