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
      title: "Text_Field",
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
        title: Text("AppBar"),
        backgroundColor: Colors.amber,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),labelText: "First Name"
            ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),labelText: "Last Name"
            ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),labelText: "Email Address"
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(onPressed: (){
            
            }, child: Text("Submit"),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,foregroundColor: Colors.white,minimumSize: Size(double.infinity, 70)
            )),
          )
        ]
      )
    );
  }
  
}
```