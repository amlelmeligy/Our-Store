import 'package:flutter/material.dart';
import 'package:proj_3/about.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List categories = [
  {"iconname": Icons.laptop, "title": "laptop"},
  {"iconname": Icons.phone_android_rounded, "title": "phone"},
  {"iconname": Icons.headphones, "title": "headphone"},
  {"iconname": Icons.electric_bike, "title": "bike"},
  {"iconname": Icons.car_crash_sharp, "title": "cars"},
];

List item = [
  {
    "image": "images/1.png",
    "name": "headphone 1",
    "description": "Best headphone",
    "price": "350\$"
  },
  {
    "image": "images/2.png",
    "name": "headphone 2 ",
    "description": "Best headphone",
    "price": "400\$"
  },
  {
    "image": "images/3.png",
    "name": "headphone 3",
    "description": "Best headphone",
    "price": "500\$"
  },
  {
    "image": "images/4.png",
    "name": "headphone 4",
    "description": "Best headphone",
    "price": "600\$"
  },
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          color: Color.fromARGB(255, 247, 245, 245),
          padding: EdgeInsets.all(20),
          child: ListView(children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        fillColor: Colors.grey[200],
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        iconColor: Colors.black),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.menu,
                      size: 40,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 20,
            ),
            Text(
              "Categories",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 25,
            ),
            ///////////////////////////////////////////////////////////////////
            Container(
              height: 110,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(51, 99, 91, 208),
                                  borderRadius: BorderRadius.circular(100)),
                              padding: EdgeInsets.all(15),
                              child: Icon(
                                categories[i]["iconname"],
                                size: 50,
                              ),
                            ),
                            Container(
                              height: 5,
                            ),
                            Text(
                              categories[i]["title"],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[800]),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            /////////////////////////////////////////////////////////////////////
            Container(
              height: 20,
            ),
            Text(
              "Best Selling",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 15,
            ),
/////////////////////////////////////////////////////////////////////////////
            Container(
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 260),
                itemCount: item.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => about(data: item[i])));
                    },
                    //////////////////////////////////////////////////////
                    /////////////////////////////////////////////////////
                    child: Card(
                      color: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(51, 99, 91, 208),
                                // color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.all(20),
                            width: 400,
                            child: Image.asset(
                              item[i]['image'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              item[i]["name"],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Text(
                            item[i]["description"],
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            item[i]["price"],
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 53, 45, 124),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ]),
        )));
  }
}
