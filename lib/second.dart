import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

abstract class _secondState extends State<second> with TickerProviderStateMixin {
  int a = 0;
  TabController? t;

  @override
  void initState() {
    t = TabController(initialIndex: a, length: 4, vsync: this);
    t!.addListener(() {
      setState(() {
        a = t!.index;

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(actions: [
              PopupMenuButton(
                itemBuilder: (context) =>
                [
                  PopupMenuItem(
                    child: Text("New group"),
                    onTap: () {
                      setState(() {
                        a = 0;
                      });
                      t!.animateTo(a);
                    },
                  ),
                  PopupMenuItem(child: Text("new broadcast"),
                    onTap: () {
                      setState(() {
                        a = 1;
                      });
                      t!.animateTo(a);
                    },
                  ),
                  PopupMenuItem(child: Text("linked device"),
                    onTap: () {
                      setState(() {
                        a = 2;
                      });
                      t!.animateTo(a);
                    },
                  ),
                  PopupMenuItem(child: Text("strred massage"),
                    onTap: () {
                      setState(() {
                        a = 3;
                      });
                      t!.animateTo(a);
                    },
                  ),
                  PopupMenuItem(child: Text("Payment"),
                    onTap: () {
                      setState(() {
                        a = 4;
                      });
                      t!.animateTo(a);
                    },
                  ),
                  PopupMenuItem(child: Text("Setting"),
                    onTap: () {
                      setState(() {
                        a = 5;
                      });
                      t!.animateTo(a);
                    },
                  ),
                ],
              )
            ],
            ),
            drawer: Drawer(),
            body: Container(child: Column(
                children: [
                  Row(children: [Text("Good Evening")],),
                  Row(children: [
                    Text("Keyur Vadi", style: TextStyle(fontSize: 25),)
                  ],),
                  Row(children: [
                    Container(height: 200,
                      width: 300,
                      decoration: BoxDecoration(image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage("image/card2.png")
                      )),)
                  ],)
                ]),
            ),
          );
