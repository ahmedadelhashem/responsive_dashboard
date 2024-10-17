import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/style.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, this.backgroundColor, this.textcolor});
 final Color?backgroundColor,textcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          elevation: 0,
          backgroundColor:backgroundColor?? Color(0xFF4DB7F2)
        ),
        onPressed: () {
        },child: Text('',style: Style.StyleSemiBold16.copyWith(color: textcolor),),
      ),
    );
  }
}