import 'package:flutter/material.dart';
import 'package:proj_3/changePass.dart';
import 'package:proj_3/editProfile.dart';
import 'package:proj_3/payment.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 238, 243, 246),
        padding: EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Container(
              width: 200,
              height: 200,
              child: Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.asset("images/aml_1.jpg"),
              )),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                  child: Text(
                "Salma Khaled",
                style: TextStyle(
                    color: Color.fromARGB(255, 78, 72, 165),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.grey),
                  )),
            ),
            ////////////////////////////////////////////////////////////////////////

            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => editProfile()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 78, 72, 165),
                        ),
                        child: Icon(
                          Icons.edit,
                          size: 25,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      title: Container(
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))),
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => changePass()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 78, 72, 165),
                        ),
                        child: Icon(
                          Icons.vpn_key,
                          size: 25,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      title: Container(
                        child: Text(
                          "Change Password",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))),
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => payment()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 78, 72, 165),
                        ),
                        child: Icon(
                          Icons.payment,
                          size: 25,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      title: Container(
                        child: Text(
                          "Payment",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))),
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////
            InkWell(
              // onTap: () {
              //   Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => appointment()),
              //   );
              // },
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 78, 72, 165),
                        ),
                        child: Icon(
                          Icons.info,
                          size: 25,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      title: Container(
                        child: Text(
                          "Information",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))),
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////
            InkWell(
              // onTap: () {
              //   Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => appointment()),
              //   );
              // },
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 78, 72, 165),
                        ),
                        child: Icon(
                          Icons.edit,
                          size: 25,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      title: Container(
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
