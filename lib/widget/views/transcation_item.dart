import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/transcationmodel.dart';
import 'package:responsive_dashboard/utils/style.dart';

class TranscationItem extends StatelessWidget {
  const TranscationItem({super.key, required this.transcationmodel});
  final Transcationmodel transcationmodel;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(transcationmodel.title, style: Style.StyleSemiBold16),
          subtitle: Text(transcationmodel.data,
              style: Style.StyleReqular16.copyWith(color: Color(0xFFAAAAAA))),
          trailing: Text(
            transcationmodel.amout,
            style: Style.StyleSemiBold20.copyWith(
              color: transcationmodel.iswithdrawal
                  ? Color(0xFFF3735E)
                  : Color(0xff7CD87A),
            ),
          ),
        ));
  }
}
