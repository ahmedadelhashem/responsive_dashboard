import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/views/custombutton.dart';
import 'package:responsive_dashboard/widget/views/customtextfield.dart';

class QuickInvoiceform extends StatelessWidget {
  const QuickInvoiceform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: titletextfield(title: 'Customer name', hint: 'Type customer name')),
            SizedBox(width: 16  ,),
            Expanded(child: titletextfield(title: 'Customer Email', hint: 'Type customer email'))
          ],
        ),
        Row(
          children: [
            Expanded(child: titletextfield(title: 'Item name', hint: 'Type customer name')),
            SizedBox(width: 16  ,),
            Expanded(child: titletextfield(title: 'Item mount', hint: 'USE'))
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: Custombutton(
              textcolor: Color(0xFF4DB7F2),
              backgroundColor: Colors.transparent,)),
            SizedBox(width: 24,),
            Expanded(child: Custombutton())
          ],
        )
      ],
    );
  }
}