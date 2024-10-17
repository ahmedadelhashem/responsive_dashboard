import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/style.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key, required this.hint});
 final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText:hint ,
        fillColor: Color(0xFFFAFAFA),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xFFFAFAFA)
          )
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xFFFAFAFA)
          )
        )
      ),
    );
  }
}

class titletextfield extends StatelessWidget {
  const titletextfield({super.key, required this.title, required this.hint});
 final String title,hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
     title,
    style:Style.StyleMedium16
  ),
  SizedBox(height: 16,),
  Customtextfield(hint:hint,)
      ],
    );
  }
}