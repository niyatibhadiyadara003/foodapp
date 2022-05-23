import 'package:flutter/material.dart';

import 'Secondpage.dart';
import 'modal.dart';

List Cart = [];

class Thirdpage extends StatefulWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  _ThirdpageState createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  List home = [
    Detail(
        id: 0,
        image: "assets/images/download(1).png",
        title: "Veg.burger",
        subtitle:
            "it is very special and fresh food for those who love it,\nwho want to enjoy this meal,it has greatful test",
        price: '60',
        like: false,
        cart: false),
    Detail(
        id: 1,
        image: "assets/images/images (3).jpg",
        title: "Ice-cream",
        subtitle: "with pista flavour",
        price: '180',
        like: false,
        cart: false),
    Detail(
        id: 2,
        image: "assets/images/images (5).jpg",
        title: "Milk-Shake",
        subtitle: "with Pinepple flavour",
        price: '290',
        like: false,
        cart: false),
    Detail(
        id: 3,
        image: "assets/images/images (7).jpg",
        title: "Veg.Sandwich",
        subtitle: "with extra cheese",
        price: '150',
        like: false,
        cart: false),
  ];

  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
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
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white.withOpacity(0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: home.map((e) => getdisp(e, args)).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getdisp(e, int args) {
    return (args == e.id)
        ? Column(
            children: [
              Image.asset(e.image, height: 450),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment(-0.8, 0),
                child: Text(
                  e.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment(-0.5, 0),
                child: Text(
                  e.subtitle,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment(-0.83, 0),
                child: Text(
                  "Total Price",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment(-0.2, 0),
                    child: Text(
                      "₹ ${e.price}.00",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 80),
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
                    child: (e.like)
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(Icons.favorite_border_outlined),
                    backgroundColor: Colors.black.withOpacity(0.1),
                    mini: true,
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        Text(
                          "Add to cart",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              e.cart = !e.cart;
                              if (e.cart == true) {
                                Cart.add(e);
                              }
                            });
                            print(Cart);
                          },
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 60),
            ],
          )
        : Container();
  }
}
