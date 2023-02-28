import 'dart:math';

import 'package:flutter/material.dart';

class Colorpalet extends StatefulWidget {
  const Colorpalet({Key? key}) : super(key: key);

  @override
  State<Colorpalet> createState() => _ColorpaletState();
}

class _ColorpaletState extends State<Colorpalet> {

  int a=0,b=0,c=0,d=0,e=0,f=0;

  List l1 = [
    Colors.cyan,
    Colors.pink,
    Colors.black,
    Colors.white,
    Colors.amber,
    Colors.purple,
    Colors.indigo,
    Colors.teal,
    Colors.green,
    Colors.red,
    Colors.brown,
    Colors.yellow,
    Colors.deepOrange,
    Colors.lightGreenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xffFFFFFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Color Palette\n  Generator",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff3BB3F9),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 304,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black,width: 2),
              ),
              child: Column(
                children: [
                 // Plate(l1[a]),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: l1[a],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    ),
                  ),
                  Plate(l1[b]),
                  Plate(l1[c]),
                  Plate(l1[d]),
                  Plate(l1[e]),
                 // Plate(l1[f]),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: l1[f],
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              setState(() {
                Random r = Random();
                a = r.nextInt(12);
                // b = r.nextInt(12);
                // c = r.nextInt(12);
                // d = r.nextInt(12);
                // e = r.nextInt(12);
                // f = r.nextInt(12);

                b = r.nextInt(12);
                while(a==b)
                {
                  b = r.nextInt(12);
                }
                c = r.nextInt(12);
                while(c==a || c==b)
                {
                  c = r.nextInt(12);
                };
                d = r.nextInt(12);
                while(d==a || b==d || c==d)
                {
                  d = r.nextInt(12);
                };
                e = r.nextInt(12);
                while(a==e || b==e || c==e || d==e)
                {
                  e = r.nextInt(12);
                };
                f = r.nextInt(12);
                while(a==f || b==f || c==f || d==f || e==f)
                {
                  f = r.nextInt(12);
                };

              });
            }, child: Text("Generate",style: TextStyle(
              fontSize: 20,color: Color(0xffD8E6F4)
            ),),),
          ],
        ),
      ),
    );
  }

  Widget Plate(Color c1)
  {
    return Container(
      height: 50,
      width: double.infinity,
      color: c1,
    );
  }
}
