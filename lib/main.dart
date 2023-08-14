import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const myapp());
}
class myapp extends StatelessWidget{
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: "Count App",
       home: homeactivity(),
     );
  }

}
class homeactivity extends StatefulWidget{
  const homeactivity({super.key});

  @override
  State<StatefulWidget> createState() {
    return homepageUI();

  }

}
class homepageUI extends State<homeactivity>{
  int countnumber=0;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Myapp"),
       ),
       body: Center(
         child: Text(countnumber.toString()),
       ),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         onPressed: (){
           setState(() {
             countnumber=countnumber+1;
           });

         },
       ),
     );
  }

}