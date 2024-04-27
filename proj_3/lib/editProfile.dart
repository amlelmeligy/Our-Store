import 'package:flutter/material.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Edit Profile",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 13),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ClipOval(
                  child: Image(
                    image: AssetImage('images/aml_1.jpg'),
                    width: 65,
                    height: 65,
                    fit: BoxFit.cover,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    //
                  },
                  child: Container(
                    width: 270,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.2,
                          color: const Color.fromARGB(255, 145, 145, 145)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.camera_alt_outlined,
                            size: 24,
                            color: Color.fromARGB(255, 145, 145, 145)),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: const Text(
                            'Change Profile Picture',
                            style: TextStyle(
                                fontSize: 15.5,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 145, 145, 145)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView(
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 1 / 2.28,
                            child: TextField(
                              maxLines: 1,
                              cursorHeight: 20,
                              cursorWidth: 1,
                              showCursor: true,
                              cursorColor:
                                  const Color.fromARGB(255, 4, 90, 240),
                              decoration: InputDecoration(
                                labelText: 'Name',
                                labelStyle: const TextStyle(fontSize: 14),
                                isDense: true,
                                hintStyle: const TextStyle(fontSize: 14),
                                hintText: 'name',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 1 / 2.28,
                            child: TextField(
                              maxLines: 1,
                              cursorHeight: 20,
                              cursorWidth: 1,
                              showCursor: true,
                              cursorColor:
                                  const Color.fromARGB(255, 4, 90, 240),
                              decoration: InputDecoration(
                                labelText: 'Specialization',
                                labelStyle: const TextStyle(fontSize: 14),
                                isDense: true,
                                hintStyle: const TextStyle(fontSize: 14),
                                hintText: 'Specialization',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7)),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * 1,
                          child: TextField(
                            maxLines: 1,
                            cursorHeight: 20,
                            cursorWidth: 1,
                            showCursor: true,
                            cursorColor: const Color.fromARGB(255, 4, 90, 240),
                            decoration: InputDecoration(
                              labelText: 'E-mail',
                              labelStyle: const TextStyle(fontSize: 14),
                              isDense: true,
                              hintStyle: const TextStyle(fontSize: 14),
                              hintText: 'example@gmail.com',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * 1,
                          child: TextField(
                            maxLines: 1,
                            cursorHeight: 20,
                            cursorWidth: 1,
                            showCursor: true,
                            cursorColor: const Color.fromARGB(255, 4, 90, 240),
                            decoration: InputDecoration(
                              labelText: 'Contact',
                              labelStyle: const TextStyle(fontSize: 14),
                              isDense: true,
                              hintStyle: const TextStyle(fontSize: 14),
                              hintText: '(+20) 01************',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * 1,
                          child: TextField(
                            maxLines: 1,
                            cursorHeight: 20,
                            cursorWidth: 1,
                            showCursor: true,
                            cursorColor: const Color.fromARGB(255, 4, 90, 240),
                            decoration: InputDecoration(
                              labelText: 'Addrees',
                              labelStyle: const TextStyle(fontSize: 14),
                              isDense: true,
                              hintStyle: const TextStyle(fontSize: 14),
                              hintText: 'Addrees',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * 1,
                          child: TextField(
                            maxLines: 1,
                            cursorHeight: 20,
                            cursorWidth: 1,
                            showCursor: true,
                            cursorColor: const Color.fromARGB(255, 4, 90, 240),
                            decoration: InputDecoration(
                              labelText: 'Practicing tenure',
                              labelStyle: const TextStyle(fontSize: 14),
                              isDense: true,
                              hintStyle: const TextStyle(fontSize: 14),
                              hintText: 'number of years',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          child: TextField(
                            maxLines: 1,
                            cursorHeight: 20,
                            cursorWidth: 1,
                            showCursor: true,
                            cursorColor: const Color.fromARGB(255, 4, 90, 240),
                            decoration: InputDecoration(
                              suffixIcon: const Icon(
                                Icons.calendar_month_outlined,
                                size: 24,
                                color: Color.fromARGB(255, 145, 145, 145),
                              ),
                              labelText: 'Date of birth',
                              labelStyle: const TextStyle(fontSize: 14),
                              isDense: true,
                              hintStyle: const TextStyle(fontSize: 14),
                              hintText: 'dd mm yyyy',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 78, 72, 165),
                            borderRadius: BorderRadius.circular(20)),
                        margin: const EdgeInsets.only(top: 80),
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
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700),
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
                    ],
                  )),
            ],
          ))
        ]),
      ),
    );
  }
}
