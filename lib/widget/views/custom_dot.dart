import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key,required this.isActive});
 final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
       width: isActive? 32:8,
          height: 8,
          decoration: ShapeDecoration(
            color:isActive? Color(0xFF4DB7F2):Color(0xFFE7E7E7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
      duration: 
    Duration(milliseconds: 300));
  }
}