import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/model/itemincome.dart';
import 'package:responsive_dashboard/utils/style.dart';
import 'package:responsive_dashboard/widget/views/customContainer.dart';
import 'package:responsive_dashboard/widget/views/income_chart.dart';
import 'package:responsive_dashboard/widget/views/incomedetails.dart';
import 'package:responsive_dashboard/widget/views/incomeheader.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Customcontainer(
      child: Column(
        children: [
          Incomeheader(),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: incomechart(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Incomedetails())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
