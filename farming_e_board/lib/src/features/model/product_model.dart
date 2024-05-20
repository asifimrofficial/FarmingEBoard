class Product{
  final String name;
  final String description;
  final double price;
  final String image;

  Product({required this.name, required this.description,required this.price,required this.image});

  static List products = [
    Product(name: 'ROW CROP TRACTOR', description: 'This is a tractor', price: 100000, image: 'assets/app_images/products/tr1.png'),
    Product(name: 'COMPACT TRACTOR', description: 'This is a tractor', price: 100000, image: 'assets/app_images/products/tr2.png'),
    Product(name: 'INDUSTRIAL TRACTOR', description: 'This is a tractor', price: 100000, image: 'assets/app_images/products/tr3.png'),
    Product(name: 'IMPLEMENT TRACTOR', description: 'This is a tractor', price: 100000, image: 'assets/app_images/products/tr4.png'),
    Product(name: 'Tractor 5', description: 'This is a tractor', price: 100000, image: 'assets/app_images/products/tr5.png'),
    Product(name: 'Tractor 6', description: 'This is a tractor', price: 100000, image: 'assets/app_images/products/tr6.png'),

    
  ];
}