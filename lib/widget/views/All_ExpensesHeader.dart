
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/style.dart';
import 'package:responsive_dashboard/widget/views/RangeOptine.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: Style.StyleSemiBold20,
        ),
        Expanded(child: SizedBox()),
        RangeOptine()
      ],
    );
  }
}