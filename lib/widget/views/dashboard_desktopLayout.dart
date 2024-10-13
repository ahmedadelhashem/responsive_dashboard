import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/views/All_Expenses.dart';
import 'package:responsive_dashboard/widget/views/QuickInvoice.dart';
import 'package:responsive_dashboard/widget/views/customdrawer.dart';

class DashboardDesktoplayout extends StatelessWidget {
  const DashboardDesktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
     Expanded(child: Customdrawer(),),
     SizedBox(width:20 ,),
     Expanded(
      flex: 2,
      child: Column(
      children: [
     Expanded(child: AllExpenses()),
     Expanded(child: QuickInvoice())      
      ],
     ))
    ],);
  }
}


