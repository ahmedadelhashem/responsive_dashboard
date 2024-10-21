import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/style.dart';

class Incomeheader extends StatelessWidget {
  const Incomeheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: Style.StyleSemiBold20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Color(0xffF1F1F1),
                ),
                borderRadius: BorderRadius.circular(12)),
          ),
          child: Row(
            children: [
              Text(
                'Montly',
                style: Style.StyleMedium16,
              ),
              SizedBox(width: 16,),
              Transform.rotate(
                angle: -1.57079633,
                child: Icon(Icons.arrow_back_ios_rounded))
            ],
          ),
        )
      ],
    );
  }
}
