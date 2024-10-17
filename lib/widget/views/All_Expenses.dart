import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/views/AllExpenses_itemlistview.dart';
import 'package:responsive_dashboard/widget/views/All_ExpensesHeader.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesitemlistview()
        ],
      ),
    );
  }
}
