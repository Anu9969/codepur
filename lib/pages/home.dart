import 'dart:convert';

import 'package:codepur/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:codepur/widgets/drawer.dart';
import 'package:codepur/widgets/item_widgets.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 4;

  final String name = "Let's Upgrade";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
    //build hone ke pehle ye call hoga to get the data from the json pehle hi
  }

  loadData() async {
    final Json = await rootBundle.loadString("assets/files/catalog.json");
    final decodedJson = jsonDecode(Json);
    var productData = decodedJson["items"];
    CatalogModel.items = List.from(productData)
        .map<MyItems>((item) => MyItems.fromMap(item))
        .toList();
      setState(() {
        
      });  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Catalog App',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CatalogModel.items.isNotEmpty
        ? ListView.builder(
          //builder use kiya scrolling m naye items bnte rahenge
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidgets(
              item: CatalogModel.items[index],
            );
          },
        )
        :Center(
          child: CircularProgressIndicator(),
        )
      ),
      drawer: MyDrawer(),
    );
  }
}
