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
      title: "Navigator",
      home: HomePage(),
     );
  }
  
}

class HomePage extends StatelessWidget
{
  const HomePage({super.key});

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context)
    .showSnackBar(SnackBar(content: Text(message)));
  }

  alartDiagol(context){
    return showDialog(context: context,
     builder: (context){
      return Expanded(child:AlertDialog(
        title: Text("Alart!"),
        content: Text("Do you want to delete?"),
        actions: [
          TextButton(onPressed:(){
            MySnackBar("Delete successfully",context);
            Navigator.pop(context);
          }, 
          child:Text("Yes")),
          TextButton(onPressed:(){
            Navigator.pop(context);
          }, child:Text("NO"))
        ],
              )
       );
     }
     );
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("This is 1st page"),
        backgroundColor: Colors.amber,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is first Page"),
            ElevatedButton(onPressed: (){
              alartDiagol(context);
            },
             child:Text("Go to second page"),style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              foregroundColor: Colors.blue,
              backgroundColor: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))
              )
             ),
             )
          ],
        ),
      ),
     );
  }
  
}

```