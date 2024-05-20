import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundSVG extends StatelessWidget {
  const BackgroundSVG({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
           child:SvgPicture.asset('assets/app_images/circle.svg'),
            
          ),
        ),
      ],
    );
  }
}