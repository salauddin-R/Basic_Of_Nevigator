```dart
import 'package:flutter/material.dart';

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
     return Scaffold(
     appBar: AppBar(
      title: Text("Circular progress Bar"),
      backgroundColor: Colors.blue,
     ),

     body: Center(
      child:LinearProgressIndicator(
        minHeight: 20,
        color: const Color.fromARGB(255, 124, 10, 2),
        backgroundColor: const Color.fromARGB(113, 0, 0, 0),
      )
     ),
     );
  }
  
}
```