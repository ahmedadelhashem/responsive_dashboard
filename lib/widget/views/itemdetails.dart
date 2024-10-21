import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/itemincome.dart';
import 'package:responsive_dashboard/utils/style.dart';

class itemdetails extends StatelessWidget {
  const itemdetails({super.key, required this.itemincome,});
 final Itemincome itemincome;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(shape: OvalBorder(),
        color: itemincome.color),
      ),
      title: Text(itemincome.title,style: Style.StyleReqular16,),
      trailing: Text(itemincome.trailing,style: Style.StyleMedium16,),
    );
  }
}
