import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}



class _ScreenState extends State<Screen> {
  late TextEditingController bomdodController;
  late TextEditingController peshinController;
  late TextEditingController asrController;
  late TextEditingController shomController;
  late TextEditingController huftonController;
  late TextEditingController tahajjudController;
  bool screenIgnoring = true;
  @override
  void initState() {
    // TODO: implement initState
    bomdodController = TextEditingController();
    peshinController = TextEditingController();
    asrController = TextEditingController();
    shomController = TextEditingController();
    huftonController = TextEditingController();
    tahajjudController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    bomdodController.dispose();
    peshinController.dispose();
    asrController.dispose();
    shomController.dispose();
    huftonController.dispose();
    tahajjudController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [GestureDetector(onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Welcomescreen(),),);
      },
        child: Container(height: 20.0, width:
        20.0, child: Icon(Icons.arrow_back_ios),),
      )
      ],
        backgroundColor: Color(0xFF21ABF5),
        title: Text('Qazo Nomozlaringizni hisoblang '),
      ),
      backgroundColor: Color(0xFF3F73CE),
      // floatingActionButton:
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,

      body: SingleChildScrollView(
        child: Stack(
          children: [
            IgnorePointer(
              ignoring: screenIgnoring ? false : true,
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10.0, top: 15.0),
                                child: Text(
                                  'Bomdod',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 3.0),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 50.0,
                                    width: 60.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Color(0xFF38A4DE),
                                    ),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      controller: bomdodController,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          int count =
                                          int.parse(bomdodController.text);
                                          setState(() {
                                            count++;
                                            bomdodController.text =
                                                count.toString();
                                          });
                                        },
                                        child: Icon(Icons.add),
                                        backgroundColor: Color(0xFF219CD7),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          int count =
                                          int.parse(bomdodController.text);
                                          setState(() {
                                            count--;
                                            bomdodController.text =
                                                count.toString();
                                          });
                                        },
                                        child: Icon(Icons.remove),
                                        backgroundColor: Color(0xFF219CD7),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF258DE2),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10.0, top: 15.0),
                                  child: Text(
                                    'Peshin',
                                    style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 3.0),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly,
                                  children: [
                                    Container(
                                      width: 60.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            8.0),
                                        color: Color(0xFF38A4DE),
                                      ),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        controller: peshinController,
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            int count =
                                            int.parse(peshinController.text);
                                            setState(() {
                                              count++;
                                              peshinController.text =
                                                  count.toString();
                                            });
                                          },
                                          backgroundColor: Color(0xFF219CD7),
                                          child: Icon(Icons.add),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        FloatingActionButton(
                                          child: Icon(Icons.remove),
                                          backgroundColor: Color(0xFF219CD7),
                                          onPressed: () {
                                            int count =
                                            int.parse(peshinController.text);
                                            setState(() {
                                              count--;
                                              peshinController.text =
                                                  count.toString();
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF258DE2)),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 15.0, top: 10.0),
                                child: Text(
                                  'Asr',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 3.0),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 60.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Color(0xFF38A4DE),
                                    ),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      controller: asrController,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          int count =
                                          int.parse(asrController.text);
                                          setState(() {
                                            count++;
                                            asrController.text =
                                                count.toString();
                                          });
                                        },
                                        child: Icon(Icons.add),
                                        backgroundColor: Color(0xFF219CD7),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      FloatingActionButton(
                                        backgroundColor: Color(0xFF219CD7),
                                        onPressed: () {
                                          int count =
                                          int.parse(asrController.text);
                                          setState(() {
                                            count--;
                                            asrController.text =
                                                count.toString();
                                          });
                                        },
                                        child: Icon(Icons.remove),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF258DE2),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 15.0, top: 10.0),
                                child: Text(
                                  'Shom',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 3.0),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 60.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Color(0xFF38A4DE),
                                    ),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      controller: shomController,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          int count =
                                          int.parse(shomController.text);
                                          setState(() {
                                            count++;
                                            shomController.text =
                                                count.toString();
                                          });
                                        },
                                        child: Icon(Icons.add),
                                        backgroundColor: Color(0xFF219CD7),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          int count =
                                          int.parse(shomController.text);
                                          setState(() {
                                            count--;
                                            shomController.text =
                                                count.toString();
                                          });
                                        },
                                        child: Icon(Icons.remove),
                                        backgroundColor: Color(0xFF219CD7),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Color(0xFF258DE2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 15.0, top: 10.0),
                                child: Text(
                                  'Xufton(Farz)',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 3.0),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      width: 60.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                        color: Color(0xFF38A4DE),
                                      ),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        controller: huftonController,
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0),
                                      )),
                                  Column(
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          int count =
                                          int.parse(huftonController.text);
                                          setState(() {
                                            count++;
                                            huftonController.text =
                                                count.toString();
                                          });
                                        },
                                        child: Icon(Icons.add),
                                        backgroundColor: Color(0xFF219CD7),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          int count =
                                          int.parse(huftonController.text);
                                          setState(() {
                                            count--;
                                            huftonController.text =
                                                count.toString();
                                          });
                                        },
                                        child: Icon(Icons.remove),
                                        backgroundColor: Color(0xFF219CD7),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF258DE2),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 15.0,
                                  top: 10.0,
                                ),
                                child: Text(
                                  'Xufton(Vitr)',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 3.0),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 50.0,
                                    width: 60.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color(0xFF38A4DE),
                                    ),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      controller: tahajjudController,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          int count = int.parse(
                                              tahajjudController.text);
                                          setState(() {
                                            count++;
                                            tahajjudController.text =
                                                count.toString();
                                          });
                                        },
                                        backgroundColor: Color(0xFF219CD7),
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          int count = int.parse(
                                              tahajjudController.text);
                                          setState(() {
                                            count--;
                                            tahajjudController.text =
                                                count.toString();
                                          });
                                        },
                                        backgroundColor: Color(0xFF219CD7),
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF258DE2),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Center(
              heightFactor: 16,
              child: FloatingActionButton(
                mini: true,
                child: Icon(
                    Icons.lock_clock,
                    size: 30.0,
                    color: Colors.black54
                ),
                onPressed: () {
                  setState(() {
                    screenIgnoring = !screenIgnoring;
                  });
                },
                isExtended: true,
              ),
            ),
            // Container(
            //   height: 100,
            //   width: 100,
            //   decoration: BoxDecoration(
            //     color: Colors.red,
            //     borderRadius: BorderRadius.circular(50)
            //   ),
            // )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.grey,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.menu_book_outlined), label: 'book'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.format_list_numbered), label: 'rosary'),
      //   ],
      // ),
    );
  }
}
