import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/style.dart';
import 'package:responsive_dashboard/widget/views/Latesttransaction_Listview.dart';

class Latesttransaction extends StatelessWidget {
  const Latesttransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: Style.StyleMedium16),
        SizedBox(height: 16,),
        LatesttransactionListview()
      ],
    );
  }
}
