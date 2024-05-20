import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common_widgets/categorty_card.dart';
import '../model/category_model.dart';

class CatergoryScreen extends StatelessWidget {
  const CatergoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff51BB36),
      appBar: AppBar(
        backgroundColor: Color(0xff51BB36),
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: Text(
          'Categories',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 38,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                  
                  ),
                ],
                ),
                child: TextField(
                decoration: InputDecoration(
                  
                  hintText: 'Search for a category',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
                ),
              ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18,
                childAspectRatio: 1,
              ),
              padding: const EdgeInsets.only(top: 50, left: 29, right: 29),
              itemCount: CategoryModel.categories.length,
              itemBuilder: (context, index) {
                return CategoryCard(
                  text: CategoryModel.categories[index].name,
                  image: CategoryModel.categories[index].image,
                );
              },
             
           
            ),
          ),
        ],
      ),
    );
  }
}
          
//           Expanded(
//             child: GridView.count(
//               crossAxisCount: 2,
//               crossAxisSpacing: 18,
//               mainAxisSpacing: 18,
//               padding: const EdgeInsets.only(top: 50, left: 29, right: 29),
//               children: [
//                 CategoryCard(
//                   text: 'Tractor',
//                   image: 'assets/app_images/tractor.png',
//                 ),
//                 CategoryCard(
//                   text: 'Harrow',
//                   image: 'assets/app_images/harrow.png',
//                 ),
//                 CategoryCard(
//                   text: 'Harvestor',
//                   image: 'assets/app_images/harvestor.png',
//                 ),
//                 CategoryCard(
//                   text: 'Planter',
//                   image: 'assets/app_images/planter.png',
//                 ),
//                 CategoryCard(
//                   text: 'Seed Drill',
//                   image: 'assets/app_images/seed_drill.png',
//                 ),
//                 CategoryCard(
//                   text: 'Seeder',
//                   image: 'assets/app_images/seeder.png',
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }