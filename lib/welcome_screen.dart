import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'home_screen.dart';
import 'registration_screen.dart';
import 'login_page.dart';

class Welcomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/masjid.jpg'), fit: BoxFit.fitHeight)),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.8, sigmaY: 3.8),
            child: Column(
              children: [
                Container(
                  width: 300.0,
                  height: 350.0,
                  child: Padding(
                      padding: const EdgeInsets.only(top: 300.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: Color(0xFF38A4DE),
                        ),
                        // width: 60,
                        // height: 60,

                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Registration()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Text(
                              'Registration',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xFF38A4DE)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 100.0, top: 10),
                      child: const Text(
                        'Log in ',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )
        // Image.asset(('images/prayers.jpg'),fit: BoxFit.cover,),
        // appBar: AppBar(
        //
        //   backgroundColor: Colors.blueGrey,
        //   title: Text(
        //     'Qazo Nomozlaringizni hisoblang',
        //     style: TextStyle(color: Colors.black54),
        //   ),
        // ),

        //backgroundColor: Color(0xFF577287),
        // body: Center(
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 280.0),
        //     child: Column(
        //       children: [
        //         Container(
        //           width: 280.0,
        //           height: 50.0,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(8.0),
        //             color: Color(0xFF365872),
        //           ),
        //           child: TextField(
        //             decoration: InputDecoration(
        //               hintStyle: TextStyle(fontSize: 12),
        //               hintText: 'ENTER YOUR GOOGLE ACCAUNT',
        //               suffixIcon: Icon(
        //                 Icons.email,
        //                 color: Color(0xFF5081A7),
        //               ),
        //               border: InputBorder.none,
        //               contentPadding: EdgeInsets.all(16.0),
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           height: 15.0,
        //         ),
        //         GestureDetector(
        //           onTap: () {
        //             Navigator.pushReplacement(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => Screen(),
        //
        //               ),
        //             );
        //           },
        //           child: Container(
        //             width: 280.0,
        //             height: 50.0,
        //             decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(12.0),
        //                 color: Color(0xFF365872)),
        //             child: Center(
        //                 child:
        //                 TextField(decoration: InputDecoration(
        //                     hintText: ('REGISTRATION GOOGLE ACCAUNT'),
        //                     hintStyle: TextStyle(fontSize: 12.0),
        //                     suffixIcon: Icon(
        //                       Icons.alternate_email_rounded, color: Colors
        //                         .blueGrey,),
        //                     contentPadding: EdgeInsets.all(15.0)),
        //                   style: TextStyle(color: Colors.white70,),
        //                 )
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
