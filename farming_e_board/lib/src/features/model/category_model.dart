class CategoryModel{
  final String name;
  final String image;
  final String? id;

  CategoryModel({required this.name, required this.image, this.id});

  factory CategoryModel.fromJson(Map<String, dynamic> json){
    return CategoryModel(
      name: json['name'],
      image: json['image'],
      id: json['id']
    );
  }
  static List categories = [
    CategoryModel(name: 'Tractor', image: 'assets/app_images/tractor.png'),
    CategoryModel(name: 'Harrow', image: 'assets/app_images/harrow.png'),
    CategoryModel(name: 'Harvestor', image: 'assets/app_images/harvestor.png'),
    CategoryModel(name: 'Planter', image: 'assets/app_images/planter.png'),
    CategoryModel(name: 'Seed Drill', image: 'assets/app_images/seed_drill.png'),
    CategoryModel(name: 'Seeder', image: 'assets/app_images/seeder.png'),
  ];
}