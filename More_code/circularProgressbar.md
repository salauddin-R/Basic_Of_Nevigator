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
      child: CircularProgressIndicator(
        color: const Color.fromARGB(255, 165, 18, 5),
        strokeWidth: 6,
        backgroundColor: const Color.fromARGB(94, 0, 0, 0),
      ),
     ),
     );
  }
  
}
```