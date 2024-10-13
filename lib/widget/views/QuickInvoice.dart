import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/style.dart';
import 'package:responsive_dashboard/widget/views/LatestTransaction.dart';
import 'package:responsive_dashboard/widget/views/Latesttransaction_Listview.dart';
import 'package:responsive_dashboard/widget/views/QuickInvoiceheader.dart';
import 'package:responsive_dashboard/widget/views/customContainer.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Customcontainer(
        child: Column(
      children: [
        QuickInvoiceheader(),
        LatesttransactionListview()
      ],
    ));
  }
}
