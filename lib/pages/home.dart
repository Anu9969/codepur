import 'package:codepur/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:codepur/widgets/drawer.dart';
import 'package:codepur/widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
  final int days = 4;
  final String name = "Let's Upgrade";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Catalog App', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),)),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(                              //builder use kiya scrolling m naye items bnte rahenge
          itemCount:CatalogModel.items.length ,
          itemBuilder:(context,index){
            return ItemWidgets(item:CatalogModel.items[index],);   //itemwidget m item pass kiya aur required kr rkha h usko vaha pr
          } ,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
