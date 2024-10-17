import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/views/LatestTransaction.dart';
import 'package:responsive_dashboard/widget/views/QuickInvoiceheader.dart';
import 'package:responsive_dashboard/widget/views/Quick_invoiceform.dart';
import 'package:responsive_dashboard/widget/views/customContainer.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return  Customcontainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        QuickInvoiceheader(),
        Latesttransaction(),
        Divider(height: 48,),
       QuickInvoiceform()
      ],
    ));
  }
}
