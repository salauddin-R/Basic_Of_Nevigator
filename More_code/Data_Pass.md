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
      title: "Salauddin's app",
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
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("This is first Page",style: TextStyle(
                  fontSize: 32,color: Colors.amber,fontWeight: FontWeight.w900
                ),),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>SecPage(data: "Hi This is Salauddin.",)));
                }, 
                child:Text("Go To 2nd page",style: TextStyle(
                  fontSize: 32,color: Colors.amber,fontWeight: FontWeight.w900
                ),),
                )
            ],
          ),
        ),
      ),
     );
  }
  
}
class SecPage extends StatelessWidget
{
  
  const SecPage({super.key, required this.data});
    final String data;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("This is 2nd Page",style: TextStyle(
                  fontSize: 32,color: Colors.amber,fontWeight: FontWeight.w900
                ),),
               ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>TrdPage()));
                }, 
                child:Text("Go To 3rd page",style: TextStyle(
                  fontSize: 32,color: Colors.amber,fontWeight: FontWeight.w900
                ),),
                ),
                Text(data)
              
            
            ],
          ),
        ),
      ),
     );
  }
}

class TrdPage extends StatelessWidget
{
  const TrdPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("This is 3rd Page",style: TextStyle(
                  fontSize: 32,color: Colors.amber,fontWeight: FontWeight.w900
                ),),
            ],
          ),
        ),
      ),
     );
  }
}
```