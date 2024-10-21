import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/views/custom_dot.dart';

class Dotsindicator extends StatelessWidget {
  const Dotsindicator({super.key, required this.currentpageindex});
  final int currentpageindex;
  @override
  Widget build(BuildContext context) {
   
    return Row(
      children: List.generate(3, (index){
        return Padding(
          padding: EdgeInsets.only(right: 8),
          child: CustomDot(isActive: index==currentpageindex));
      }),
    );
  }
}