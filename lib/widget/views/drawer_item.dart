
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/model/drawer_item.dart';
import 'package:responsive_dashboard/utils/style.dart';
import 'package:responsive_dashboard/widget/views/ActiveDraweritem.dart';
import 'package:responsive_dashboard/widget/views/InActiveDraweritem.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemmodel, required this.isActive});
final DrawerItemmodel drawerItemmodel;
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive?ActiveDraweritem(drawerItemmodel: drawerItemmodel): InActiveDraweritem(drawerItemmodel: drawerItemmodel);
  }
}

