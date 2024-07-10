import 'package:flutter/material.dart';
import 'package:codepur/models/catalog.dart';


class ItemWidgets extends StatelessWidget {
  final MyItems item;
  

  const ItemWidgets({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    // final dummylist = List.generate(56,(index)=>CatalogModel.items[0]);
    return Card(
      shadowColor: Colors.black,
      child: ListTile(
        onTap: (){
          print("${item.name} pressed");
        },
        leading: Image.network(item.image ,),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.8,
        style:TextStyle(fontWeight: FontWeight.bold,
        ) ,),
      ),
    );
  }
}