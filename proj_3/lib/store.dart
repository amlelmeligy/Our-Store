import 'package:flutter/material.dart';

class market extends StatefulWidget {
  const market({super.key});

  @override
  State<market> createState() => _marketState();
}

int index = 0;

List _photos = [
  Data(image: 'images/3.png', title: '400\$'),
  Data(image: 'images/11.jpg', title: '400\$'),
  Data(image: 'images/12.jpg', title: '400\$'),
  Data(image: 'images/13.jpg', title: '400\$'),
  Data(image: 'images/14.jpg', title: '400\$'),
  Data(image: 'images/3.png', title: '400\$'),
  Data(image: 'images/3.png', title: '400\$'),
  Data(image: 'images/4.png', title: '400\$'),
  Data(image: 'images/1.png', title: '400\$'),
  Data(image: 'images/2.png', title: '400\$'),
  Data(image: 'images/3.png', title: '400\$'),
];

class _marketState extends State<market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(118, 99, 91, 208),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(
                    Icons.list,
                    color: Colors.white,
                    size: 30,
                  ),
                  Expanded(
                      child: Center(
                          child: Text(
                    "Our Store",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Inspiration"),
                  ))),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),

            Container(
              child: Row(
                children: [
                  Container(
                    width: 161,
                    child: Column(
                      children: [
                        Text(
                          "Headphones",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Inspiration"),
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "Best headphones with reasonable prices",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: String.fromCharCode(20),
                                  fontWeight: FontWeight.normal),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 300,
                    child: Image.asset("images/1.png"),
                  )
                ],
              ),
            ),
            Center(
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
////////////////////////////////////////////////////////////////////////////////////////////////////////////

            Container(
              padding: EdgeInsets.only(top: 30, right: 10, left: 10),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemCount: _photos.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(25)),
                    child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(56, 158, 158, 158),
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: AssetImage(_photos[index].image),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                child: Text(
                              _photos[index].title,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 78, 72, 165),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),

////////////////////////////////////////////////////////////////
                            ///
                            ///
                          ],
                        )),
                  );
                },
              ),
            ),

///////////////////////////////////////////////////////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}

//////////////////
class Data {
  String image;
  String title;

  Data({required this.image, required this.title});
}
