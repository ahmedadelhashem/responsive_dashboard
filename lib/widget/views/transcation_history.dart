import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/style.dart';
import 'package:responsive_dashboard/widget/views/transactionitem_list.dart';

class TranscationHistory extends StatelessWidget {
  const TranscationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: Style.StyleSemiBold20,
            ),
            Text(
              'See all',
              style: Style.StyleMedium16.copyWith(color: Color(0xFF4EB7F2)),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
           '13 April 2022',
            style: Style.StyleMedium16.copyWith(
            color: Color(0xFFAAAAAA),
          ),
        ),
        TransactionitemList()
      ],
    );
  }
}
