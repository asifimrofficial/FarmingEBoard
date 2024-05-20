import 'package:farming_e_board/src/common_widgets/product_card.dart';
import 'package:farming_e_board/src/features/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductListingScreen extends StatelessWidget {
  const ProductListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      appBar: AppBar(
       
        elevation: 0,
        centerTitle: true,
        title: Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 238, 238, 238),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only( top: 10, right: 10, bottom: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'Tractors',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                
                // Filter icon
                Icon(
                  Icons.filter_list,
                  color: Colors.black,
                  size: 30,
                ),
            
              ],
            ),
          ),
         
          Padding(
            padding: const EdgeInsets.only(left: 18, bottom: 10),
            child: Text('${Product.products.length} items found', style: TextStyle(color: Colors.black, fontSize: 20),),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(5),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 20,
                mainAxisExtent: 255,
                // childAspectRatio: 1,
            
              ),
              itemCount: Product.products.length,
              itemBuilder: 
              (context, index) {
                return ProductCard(
                  product_name: Product.products[index].name,
                  product_image: Product.products[index].image,
                  product_price: Product.products[index].price,
                ) ;
                
                }
            ),
          ),
        ],
      )
    );
  }
}