import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/model/Latesttransaction_model.dart';
import 'package:responsive_dashboard/utils/style.dart';

class userinfo extends StatelessWidget {
  const userinfo({super.key, required this.latesttransactionModel});
  final LatesttransactionModel latesttransactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(latesttransactionModel.image),
          title: Text(latesttransactionModel.title,style: Style.StyleBold16,),
          subtitle: Text(latesttransactionModel.subtitle,style: Style.StyleReqular12,),
        ),
      ),
    );
  }
}