import 'package:farming_e_board/src/features/view/products_listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  final String text;
  final String image;
  const CategoryCard({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=> ProductListingScreen());
      },
      child: Container(
        height: 176,
        width: 151,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 238, 238, 238),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
             Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  )
                ),
             ),
             Spacer(),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        )
      ),
    );
        
  }
}