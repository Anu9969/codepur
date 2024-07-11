class CatalogModel{
  static var items = [
  MyItems(
    id: 1,
    name: "iPhone 12 Pro",
    description: "Apple iPhone 12th generation",
    color: "#33505a",
    image: "https://m.media-amazon.com/images/I/81c50PU+lpL._AC_UY327_FMwebp_QL65_.jpg",
    price: 999,
  ),


];

  
  
}









class MyItems {


  
  final int id;
  final String name;
  final String description;
  final String color;
  final String image;
  final num price;

  MyItems({required this.id, required this.name, required this.description, required this.color, required this.image, required this.price});
 
factory MyItems.fromMap(Map<String,dynamic> map){
  return MyItems(
    id:map["id"],
    name:map["name"],
    description:map["description"],
    color:map["color"],
    image:map["image"],
    price:map["price"],
  );
  
}

toMap() =>{
  "id":id,
  "name":name,
  "description":description,
  "color":color,
  "image":image,
  "price":price,
};
}

