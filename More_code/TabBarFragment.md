```dart
import 'package:flutter/material.dart';
import 'package:statefull/Fagment/email.dart';
import 'package:statefull/Fagment/home.dart';
import 'package:statefull/Fagment/person.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
     );
  }
  
}

class HomePage extends StatelessWidget
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
     child:Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.blue,
        bottom: TabBar(
          isScrollable: true,
          tabs:[
            Tab(icon: Icon(Icons.home),text: "Home",),
            Tab(icon: Icon(Icons.person),text: "person",),
            Tab(icon: Icon(Icons.email),text: "email",),
        ]),
      ),
      body: TabBarView(children:[
          HomeFragment(),
          PersonFragment(),
          EmailFragment()
      ]),
     )
     );
  }
  
}
```