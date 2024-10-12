
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/model/drawer_item.dart';
import 'package:responsive_dashboard/utils/style.dart';

class ActiveDraweritem extends StatelessWidget {
  const ActiveDraweritem({
    super.key,
    required this.drawerItemmodel,
  });

  final DrawerItemmodel drawerItemmodel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemmodel.image),
      title: Text(drawerItemmodel.title,style: Style.StyleBold16,),
      trailing: Container(
        width: 3.7,
        decoration: BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}


