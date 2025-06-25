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
    HomePage({super.key});

  var MyItem=[
    {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"rony"},
     {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"salauddin"},
      {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"saklan"},
       {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"Md"},
        {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"Aioby"},
         {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"Hitlar"},
          {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"hi"},
           {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"hellow"},
            {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"what"},
             {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"Talk"},
              {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"More"},
               {"img":"https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg","title":"bad"},
  ];

  MySnackBar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg),));
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar:AppBar(
        title: Text("টেক্সট ফিল্ড"),
        backgroundColor: Colors.blue,
      ),

      body:ListView.builder(
        itemCount:MyItem.length ,
        itemBuilder:(context,index){
          return GestureDetector(
            onTap: (){
              MySnackBar(context,MyItem[index]["title"]);
            },
            child: Container(
              height: 270,
              width: double.infinity,
              child: Image.network(MyItem[index]["img"]!,fit: BoxFit.fill,),
            ),
          );
      })
       );
  }
  
}
```