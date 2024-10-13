import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesHeaderitem extends StatelessWidget {
  const AllExpensesHeaderitem({super.key, required this.image, this.background, this.colorimage, this.coloricon});
  final String image;
  final Color? background,colorimage,coloricon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration:
              ShapeDecoration(
                shape: OvalBorder(), 
                color:background?? Color(0xFFFAFAFA)),
        child: Center(child: SvgPicture.asset(image,colorFilter: ColorFilter.mode(colorimage??Color(0xFF4EB7F2), BlendMode.srcIn),)),),
        Expanded(child: SizedBox()),
        Transform.rotate(angle: -1.57079633*2,
        child:Icon(Icons.arrow_back_ios_new,color: coloricon??Colors.black,) ,)
      ],
    );
  }
}