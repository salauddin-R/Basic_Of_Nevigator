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
        title:Text("Home Page"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Card(
          color: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(190)),
          shadowColor: const Color.fromARGB(255, 52, 177, 160),
          elevation: 50,
          child: SizedBox(
            height: 250,
            width: 250,
            child: Center(
              child: Text("Salauddin",style: TextStyle(
                fontSize: 40,fontWeight: FontWeight.w900,color: Colors.white
              ),),
            ),
          ),
        ),
      ),
     );
  }
  
}
```