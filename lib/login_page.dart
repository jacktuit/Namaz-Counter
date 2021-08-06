import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uiscreen/home_screen.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pray.jpg'), fit: BoxFit.fitHeight)),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                width: 600,
                height: 800,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: Color(0xFF38A4DE),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: ('Enter : email accaut'),
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      width: 250,
                      height: 50,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: Color(0xFF38A4DE),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: ('Password'),
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      width: 250,
                      height: 50,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Color(0xFF38A4DE),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 42.0, top: 6),
                        child: GestureDetector(
                            onTap: () {
                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => Screen(),
                              //   ),
                              // );
                            },
                            child: GestureDetector(onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Screen()),);
                            },
                              child: Text(
                                'Enter',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
