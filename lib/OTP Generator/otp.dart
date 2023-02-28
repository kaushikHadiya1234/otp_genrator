import 'dart:math';

import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController txtno =TextEditingController();
  String a = "";
  int b=0;
  int z=0;
//  List l1 = [0,1,2,3,4,5,6,7,8,9];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff15172B),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "OTP Generator",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xffF6DB87),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: TextField(
                  controller: txtno,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xffFCF6BA),
                  ),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffFCF6BA),
                    )),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffFCF6BA),
                      ),
                    ),
                    hintText: "Enter otp size",
                    hintStyle: TextStyle(
                      color: Color(0xffFCF6BA),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  a = txtno.text;
                  b = int.parse(a);

                  Random r = Random();

                  setState(() {
                    z = r.nextInt(999999999-100000000);
                  });
                },
                child: Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Color(0xffFFE8B8),
                      Color(0xffF6DB87),
                    ]),
                  ),
                  child: Text(
                    "Generate OTP",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 70,
                width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFE8B8),
                ),
                child: Text("${z==0?z:z.toString().substring(0,b)}",style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 20,
                ),),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  setState(() {
                    z=0;
                  });
                },
                child: Container(
                  height: 30,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Color(0xffFFE8B8),
                      Color(0xffF6DB87),
                    ]),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffFFE8B8),
                          blurRadius: 2,
                          spreadRadius: 3,
                          offset: Offset(3, 0)),
                    ],
                  ),
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
