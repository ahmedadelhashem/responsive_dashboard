import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/model/drawer_item.dart';

import '../../utils/style.dart';

class InActiveDraweritem extends StatelessWidget {
  const InActiveDraweritem({
    super.key,
    required this.drawerItemmodel,
  });

  final DrawerItemmodel drawerItemmodel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemmodel.image),
      title: Text(drawerItemmodel.title,style: Style.StyleMedium16,),
    );
  }
}