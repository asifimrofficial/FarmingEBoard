import 'package:farming_e_board/src/common_widgets/background.dart';
import 'package:farming_e_board/src/features/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [Align(
          alignment: Alignment.topCenter,
          child: Container(
             child:SvgPicture.asset('assets/app_images/circle.svg', height: 242,width: double.infinity,),
              
            ),
        ),],

      )
    );
  }
}