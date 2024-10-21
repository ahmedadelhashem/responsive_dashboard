import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/views/customContainer.dart';
import 'package:responsive_dashboard/widget/views/mycardsSection.dart';
import 'package:responsive_dashboard/widget/views/transcation_history.dart';

class Mycardandtranscation extends StatelessWidget {
  const Mycardandtranscation({super.key});

  @override
  Widget build(BuildContext context) {
    return Customcontainer(
      child: Column(
        children: [
          Mycardssection(),
          Divider(height: 40,
          color: Color(0xffF1F1F1),),
          TranscationHistory()
        ],
      ),
    );
  }
}