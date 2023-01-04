import 'package:flutter/material.dart';
import 'package:money_moora/second.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.blueAccent,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Container(height: 150,width: 150,decoration: BoxDecoration(image:
              DecorationImage(fit: BoxFit.fill,image: AssetImage("image/money.png"))),),
            ],),
           Row(mainAxisAlignment: MainAxisAlignment.center,
             children: [

               Text("Money ",style: TextStyle(fontSize: 25,color: Colors.white),),
               Text("Moora ",style: TextStyle(fontSize: 25,color: Colors.pink),),
             ],
           ) ,
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("A brand new experience of manging your business",style: TextStyle(color: Colors.white),)
            ],),
            SizedBox(height: 30,),
            ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)),onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return second();
              },));
            }, child: Text("Get Started Now",style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
