
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/style.dart';

class QuickInvoiceheader extends StatelessWidget {
  const QuickInvoiceheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: Style.StyleSemiBold20,
        ),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),child: Icon(Icons.add,color: Color(0xff4EB7F2),),
        )
      ],
    );
  }
}
