import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modal.dart';

List fav = [];

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  List home = [
    Detail(
        id: 1,
        image: "assets/images/images (1).jpg",
        title: "Veg.burger combo",
        subtitle: "with extra french fries\nand coca cola",
        price: '260',
        like: false,
        cart: false),
    Detail(
        id: 2,
        image: "assets/images/images.jpg",
        price: "120",
        subtitle: "with delicious cheese",
        title: "Veg.cheese burger",
        like: false,
        cart: false),
  ];
  List home1 = [
    Detail(
        id: 1,
        image: "assets/images/download (2).jpg",
        title: "Strawberry-chocolate MilkShake",
        subtitle: "with extra chocolate syrup",
        price: '150',
        like: false,
        cart: false),
    Detail(
        id: 2,
        image: "assets/images/images (4).jpg",
        price: "120",
        subtitle: "with delicious strawberry",
        title: "Strawberry MilkShake",
        like: false,
        cart: false),
  ];
  List home2 = [
    Detail(
        id: 1,
        image: "assets/images/download (1).jpg",
        title: "Chocolate-Vanila ice-cream",
        subtitle: "delicious softy",
        price: '50',
        like: false,
        cart: false),
    Detail(
        id: 2,
        image: "assets/images/images (2).jpg",
        price: "170",
        subtitle: "with delicious berries",
        title: "Mix fruit Ice-cream",
        like: false,
        cart: false),
  ];
  List home3 = [
    Detail(
        id: 1,
        image: "assets/images/download (3).jpg",
        title: "Veg.salad",
        subtitle: "healthy food",
        price: '130',
        like: false,
        cart: false),
    Detail(
        id: 2,
        image: "assets/images/images (6).jpg",
        price: "250",
        subtitle: "with delicious paneer",
        title: "Veg.paneer tikka masala",
        like: false,
        cart: false),
  ];

  List l1 = [
    Detail(
        id: 1,
        image: "assets/images/download.jpg",
        title: "Veg.burger",
        subtitle: "with extra cheese",
        price: '60',
        like: false,
        cart: false),
  ];
  List l2 = [
    Detail(
        id: 1,
        image: "assets/images/images (3).jpg",
        title: "Ice-cream",
        subtitle: "with pista flavour",
        price: '180',
        like: false,
        cart: false),
  ];
  List l3 = [
    Detail(
        id: 1,
        image: "assets/images/images (5).jpg",
        title: "Milk-Shake",
        subtitle: "with Pinepple flavour",
        price: '290',
        like: false,
        cart: false),
  ];
  List l4 = [
    Detail(
        id: 1,
        image: "assets/images/images (7).jpg",
        title: "Veg.Sandwich",
        subtitle: "with extra cheese",
        price: '150',
        like: false,
        cart: false),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
              ),
              child: Text(
                "Delicious Food",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            ListTile(
              title: Text("Services"),
              onTap: () {},
            ),
            ListTile(
              title: Text("About"),
              onTap: () {},
            ),
            ListTile(
              title: Text("help"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.orange.withOpacity(0.3),
            Colors.redAccent.withOpacity(0.3),
          ],
        )),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white.withOpacity(0.2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment(-0.8, 0),
                      child: Text(
                        "Delicious Food",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 120),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pushNamed("Fifthpage");
                        });
                      },
                      icon: Icon(Icons.shopping_cart),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment(-0.85, 0),
                  child: Text(
                    "We made fresh and healthy food",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(
                                2.0,
                                5.0,
                              ),
                            ),
                          ],
                        ),
                        child:
                            Image.asset("assets/images/burger.png", height: 40),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(
                                2.0,
                                5.0,
                              ),
                            ),
                          ],
                        ),
                        child: Image.asset("assets/images/milk-shake.png",
                            height: 40),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(
                                2.0,
                                5.0,
                              ),
                            ),
                          ],
                        ),
                        child: Image.asset("assets/images/ice-cream.png",
                            height: 40),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 3;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(
                                2.0,
                                5.0,
                              ),
                            ),
                          ],
                        ),
                        child:
                            Image.asset("assets/images/salad.png", height: 40),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IndexedStack(
                    index: index,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: home.map((e) => getdisplay(e)).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: home1.map((e) => getdisplay(e)).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: home2.map((e) => getdisplay(e)).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: home3.map((e) => getdisplay(e)).toList(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context)
                          .pushNamed("Thirdpage", arguments: index);
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        ),
                      ],
                    ),
                    child: IndexedStack(
                      index: index,
                      children: [
                        Row(
                          children: l1.map((e) => getdisplay1(e)).toList(),
                        ),
                        Row(
                          children: l2.map((e) => getdisplay1(e)).toList(),
                        ),
                        Row(
                          children: l3.map((e) => getdisplay1(e)).toList(),
                        ),
                        Row(
                          children: l4.map((e) => getdisplay1(e)).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("Secondpage");
                        },
                        child: Icon(Icons.home),
                        backgroundColor: Colors.black,
                        mini: true,
                      ),
                      const SizedBox(width: 50),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.account_balance_wallet_outlined),
                        backgroundColor: Colors.black,
                        mini: true,
                      ),
                      const SizedBox(width: 50),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context)
                                .pushNamed("Fourthpage", arguments: fav);
                          });
                        },
                        child: Icon(Icons.favorite),
                        backgroundColor: Colors.black,
                        mini: true,
                      ),
                      const SizedBox(width: 50),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.people),
                        backgroundColor: Colors.black,
                        mini: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getdisplay(e) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(
                  5.0,
                  5.0,
                ),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                e.image,
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment(-0.6, 0),
                child: Text(
                  e.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment(-0.6, 0),
                child: Text(
                  e.subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "₹ ${e.price}.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 60),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        e.like = !e.like;
                        if (e.like == true) {
                          fav.add(e);
                        } else {
                          fav.remove(e);
                        }
                      });
                    },
                    mini: true,
                    backgroundColor: Colors.black.withOpacity(0.1),
                    child: (e.like)
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(Icons.favorite_border_outlined),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }

  Widget getdisplay1(e) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const SizedBox(height: 10),
            Container(
              alignment: Alignment(-0.5, 0),
              child: Text(
                e.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment(-0.6, 0),
              child: Text(
                e.subtitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "₹ ${e.price}.00",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 180),
          ],
        ),
        const SizedBox(width: 20),
        Image.asset(e.image, height: 150),
      ],
    );
  }
}
