import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Hello World',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: Drawer(
            backgroundColor: Colors.green[200],
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.lime),
                  child: Center(
                      child: Text(
                        'Vera',
                        style: TextStyle(fontSize: 25, color: Colors.blue),
                      )),
                ),
                ListTile(
                  hoverColor: Colors.purple,
                  onTap: () {},
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.arrow_circle_right),
                ),
                ListTile(
                  hoverColor: Colors.purple,
                  onTap: () {},
                  leading: Icon(Icons.shop),
                  title: Text('Shop'),
                  trailing: Icon(Icons.arrow_circle_right),
                ),
                ListTile(
                  hoverColor: Colors.purple,
                  onTap: () {},
                  leading: Icon(Icons.shopping_cart_outlined),
                  title: Text('Order'),
                  trailing: Icon(Icons.arrow_circle_right),
                ),
                ListTile(
                  hoverColor: Colors.purple,
                  onTap: () {},
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  trailing: Icon(Icons.arrow_circle_right),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.green[300],
          appBar: AppBar(
            centerTitle: true,
            title: const Text('flutter'),
          ),
          body:  Container(
            width: 600,
            height: 300,
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // shape:  BoxShape.circle,
              borderRadius: BorderRadius.circular(30),
                color: Colors.blueGrey,

              border: Border.all(
                color: const Color(0xff40513B),
                width: 3,
                style: BorderStyle.solid
              ),
              boxShadow: [
                const BoxShadow(
                  color: Colors.deepOrangeAccent,
                  offset:Offset(7, 7),
                  blurRadius:    20,
                  spreadRadius:10,
                )
              ]
            ),
            child: const Text(
              "Hello I am inside a container",
              style: TextStyle(fontSize: 30, color: Colors.lightBlue),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.green[500],
              items: [
               BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
              ]),
        ));
  }
}
