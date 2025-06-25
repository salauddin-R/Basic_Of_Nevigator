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
        title: Text("card"),
        backgroundColor: Colors.blue,
      ),

      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 80,
              color: Colors.blue,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              child: SizedBox(
                height: 250,
                width: 250,
                child: Center(child: Text("Salauddin",style: TextStyle(
                  fontSize: 32,fontWeight: FontWeight.w900,color: Colors.white
                ),)),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: 
              (context)=>SecondPage("I came frome homePage")));
            }, child: Text("Go to Page 2")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: 
              (context)=>TherdPage(hi: "I am from HomePage")));
            }, child: Text("Go to Page 2")),
          ],
        ),
      ),

    );
  }
  
}

class SecondPage extends StatelessWidget
{
  final String comesData;
  const SecondPage(
    this.comesData,
    {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(comesData),
        backgroundColor: Colors.blue,
      ),

      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 80,
              color: Colors.blue,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              child: SizedBox(
                height: 250,
                width: 250,
                child: Center(child: Text("SecondPage",style: TextStyle(
                  fontSize: 32,fontWeight: FontWeight.w900,color: Colors.white
                ),)),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: 
              (context)=>TherdPage(hi: "I am from secondPage",)));
            }, child: Text("Go to Page 3"))
          ],
        ),
      ),

    );
  }
  
}

class TherdPage extends StatelessWidget
{
  final String hi;
  const TherdPage({super.key,required this.hi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hi),
        backgroundColor: Colors.blue,
      ),

      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 80,
              color: Colors.blue,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              child: SizedBox(
                height: 250,
                width: 250,
                child: Center(child: Text("TherdPage",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w900,color: Colors.white
                ),)),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: 
              (context)=>SecondPage("I came from therd Page")));
            }, child: Text("Go to Page2"))
          ],
        ),
      ),

    );
  }
  
}
```