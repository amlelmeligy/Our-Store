import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class changePass extends StatefulWidget {
  const changePass({super.key});

  @override
  State<changePass> createState() => _changePassState();
}

bool click1 = true;
bool click2 = true;
bool click3 = true;

class _changePassState extends State<changePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.only(top: 25, bottom: 25),
                child: Text(
                  "Change Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          focusColor: const Color.fromARGB(255, 0, 0, 0),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                click1 = !click1;
                              });
                            },
                            icon: Icon(
                              click1
                                  ? Icons.remove_red_eye_rounded
                                  : Icons.remove_red_eye_outlined,
                            ),
                            color: click1
                                ? const Color.fromARGB(255, 103, 104, 105)
                                : Color.fromARGB(255, 87, 79, 194),
                          ),
                          hintText: "***************************",
                          labelText: "Old Password ",
                          border: OutlineInputBorder(
                              gapPadding: 8,
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          focusColor: const Color.fromARGB(255, 0, 0, 0),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                click2 = !click2;
                              });
                            },
                            icon: Icon(
                              click2
                                  ? Icons.remove_red_eye_rounded
                                  : Icons.remove_red_eye_outlined,
                            ),
                            color: click2
                                ? const Color.fromARGB(255, 103, 104, 105)
                                : Color.fromARGB(255, 87, 79, 194),
                          ),
                          hintText: "Maaaaaaaaa2908078",
                          labelText: "New Password ",
                          border: OutlineInputBorder(
                              gapPadding: 8,
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          focusColor: const Color.fromARGB(255, 0, 0, 0),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                click3 = !click3;
                              });
                            },
                            icon: Icon(
                              click3
                                  ? Icons.remove_red_eye_rounded
                                  : Icons.remove_red_eye_outlined,
                            ),
                            color: click3
                                ? const Color.fromARGB(255, 103, 104, 105)
                                : Color.fromARGB(255, 87, 79, 194),
                          ),
                          hintText: "Maaaaaaaaa2908078",
                          labelText: "Repeat New Password ",
                          border: OutlineInputBorder(
                              gapPadding: 8,
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 78, 72, 165),
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(top: 400, left: 60, right: 60),
              child: TextButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Icon(
                      Icons.check_circle,
                      size: 80,
                      color: Color.fromARGB(255, 78, 72, 165),
                    ),
                    content: Container(
                      alignment: Alignment.center,
                      height: 100,
                      child: Column(
                        children: [
                          const Text(
                            'Congratulations !',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: const Text(
                              'Your Information reset successfully , you will be directed to Home screen',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                child: const Text(
                  'Save Changes',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            )
            /////////////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
