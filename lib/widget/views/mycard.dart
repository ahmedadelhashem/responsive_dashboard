import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/style.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image:
                DecorationImage(image: AssetImage(Assets.imagesCardBackground),fit: BoxFit.fill),
            color: Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),),),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(right: 42,left: 31,top: 16),
                      title: Text('Name card',style: Style.StyleReqular16.copyWith(color: Colors.white),),
                      subtitle: Text('Syah Bandi',style: Style.StyleMedium20,),
                      trailing: Icon(Icons.image),
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text('0918 8124 0042 8129',style: Style.StyleSemiBold24.copyWith(color: Colors.white,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text('12/20 - 124',style: Style.StyleReqular16.copyWith(color: Colors.white),),
                    ),
                    SizedBox(height: 25,)
                  ],
                ),
      ),
    );
  }
}
