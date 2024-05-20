import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../features/model/product_model.dart';
import '../features/view/product_detail_screen.dart';

class ProductCard extends StatelessWidget {
  final String product_name;
  final String product_image;
  final double product_price;
  const ProductCard({super.key, required this.product_name, required this.product_image, required this.product_price});

  @override
  Widget build(BuildContext context) {
    return InkWell (
      onTap: (){
      
        Get.to(()=> ProductDetailScreen( product:Product(name: product_name, description: 'This is a description', price: product_price, image: product_image,)));
      
      },
      child: Container(
        // height: 20,
        // width: 160,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ]
            ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(icon:Icon(Icons.favorite_border, color: Colors.black87,), onPressed: (){},),
              ),
              SizedBox(
                height: 120,
                // width: 140,
                child: Image.asset(product_image, scale: 1, fit: BoxFit.fill,)),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
      
                children: [
                  Text(
                    product_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 20,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    'Rs${product_price.toString()} / Day',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff51BB36),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}