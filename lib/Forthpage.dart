import 'package:flutter/material.dart';

import 'Secondpage.dart';

class Fourthpage extends StatefulWidget {
  const Fourthpage({Key? key}) : super(key: key);

  @override
  _FourthpageState createState() => _FourthpageState();
}

class _FourthpageState extends State<Fourthpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
        ),
      ),
      body: (fav.isEmpty)
          ? Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.orange.withOpacity(0.3),
                  Colors.redAccent.withOpacity(0.3),
                ],
              )),
              child: Text(
                "Sorry,your wishlist is Empty",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            )
          : Container(
              child: Column(
                children: fav.map((e) => getinput(e)).toList(),
              ),
            ),
    );
  }

  Widget getinput(e) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                e.image,
                height: 100,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    e.subtitle,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "₹ ${e.price}.00",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
