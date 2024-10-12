
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/style.dart';

class userinfolisttile extends StatelessWidget {
  const userinfolisttile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
     child:  ListTile(
      leading: SvgPicture.asset(image),
      title: Text(
        title,
        style: Style.StyleSemiBold16,
      ),
      subtitle: Text(
        subtitle,
        style: Style.StyleReqular12,
      ),
    ),);
  }
}
