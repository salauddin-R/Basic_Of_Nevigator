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
      title: "Use of Navigator",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>HomePage(),
        '/SecondPage':(context)=>SecondPage()
      },
      onUnknownRoute: (setting){
        return MaterialPageRoute(builder: (context)=>ErrorPage());
      },
     );
  }
  
}
class HomePage extends StatelessWidget
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
      return WillPopScope(
        onWillPop:()async{
          bool ShouldExit=await showDialog(
            context: context,
             builder: (context)=>AlertDialog(
              title: Text("Exit?"),
              content: Text("Do you realy want to exit??"),
              actions: [
                TextButton(onPressed:(){
                  Navigator.pop(context,true);
                },
                 child:Text("Yes")),
                 TextButton(onPressed:(){
                  Navigator.pop(context,false);
                 },
                 child:Text("No")),
              ],
             )
             );
          return ShouldExit;
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Text("Salauddin's app",style:TextStyle(fontSize:28,fontWeight: FontWeight.w900,))
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This is home page",style:
                 TextStyle(fontSize:28,fontWeight: FontWeight.w900,),),
                 ElevatedButton(
                  onPressed: (){
                      Navigator.pushNamed(context,'/SecondPage');
                 },
                  child:Text("Go to Second page",
                  style:TextStyle(fontSize:28,fontWeight: FontWeight.w900,)))
              ],
            ),
          ),
        ),
      );
  }
  
}
class SecondPage extends StatelessWidget
{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Salauddin's app",style:TextStyle(fontSize:28,fontWeight: FontWeight.w900,))
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is This is Second Page",style:
               TextStyle(fontSize:28,fontWeight: FontWeight.w900,),),
               ElevatedButton(
                onPressed: (){
                    Navigator.pushNamed(context,'/TherdPage');
               },
                child:Text("Go to Therd page",
                style:TextStyle(fontSize:28,fontWeight: FontWeight.w900,)))
            ],
          ),
        ),
     );
  }

}
class ErrorPage extends StatelessWidget
{
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Salauddin's app",style:TextStyle(fontSize:28,fontWeight: FontWeight.w900,))
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is ErrorPage. \n You press worng",style:
               TextStyle(fontSize:28,fontWeight: FontWeight.w900,),),
            ],
          ),
        ),
    );
  }
  
}