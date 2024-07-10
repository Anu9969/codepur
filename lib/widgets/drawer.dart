import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Remove the unused variable
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Anurag Sharma"),
              accountEmail: Text("sharma@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/OIP.v5CxsogXbWj6-Ff4af5SBgHaEK?rs=1&pid=ImgDetMain'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person , color: Colors.black, size: 30,),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.home , color: Colors.black, size: 30,),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.mail , color: Colors.black, size: 30,),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.linked_camera , color: Colors.black, size: 30,),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.search_rounded , color: Colors.black, size: 30,),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
