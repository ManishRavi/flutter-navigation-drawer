import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Navigation Drawer",
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Home"),
              centerTitle: true,
            ),
            drawer: Drawer(
              child: ListView(padding: EdgeInsets.zero, children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("User Name"),
                  accountEmail: Text("Email"),
                  currentAccountPicture: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSswvUaEId6l3r8Y8oPpcqKNen-XaOXgdd2mAgQxjHntCL-nrEcg")))), //  copy image url here
                ),
                ListTile(
                  title: Text('Item 1'),
                  leading: Icon(Icons.verified_user),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Item 2'),
                  leading: Icon(Icons.translate),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Item 3'),
                  leading: Icon(Icons.bookmark),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Item 4'),
                  leading: Icon(Icons.history),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Item 5'),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
              ]),
            )));
  }
}
