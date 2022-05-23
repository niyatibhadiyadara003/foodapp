import 'package:flutter/material.dart';
import 'Thirdpage.dart';

class Fifthpage extends StatefulWidget {
  const Fifthpage({Key? key}) : super(key: key);

  @override
  _FifthpageState createState() => _FifthpageState();
}

class _FifthpageState extends State<Fifthpage> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add_to_cart"),
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
      body: (Cart.isEmpty)
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
                "Sorry,your cart is Empty",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            )
          : Container(
              child: Column(
                children: Cart.map((e) => getinput(e)).toList(),
              ),
            ),
    );
  }

  Widget getinput(e) {
    int k = int.parse(e.price);

    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              e.image,
              height: 100,
            ),
            const SizedBox(width: 10),
            Column(
              children: [
                Text(
                  e.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "₹ ${k * i}.00",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (i > 1) {
                            i--;
                          }
                        });
                      },
                      child: Text("-"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      child: Text("$i", style: TextStyle(fontSize: 20)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          i++;
                        });
                      },
                      child: Text("+"),
                    ),
                  ],
                )
              ],
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    Cart.remove(e);
                  });
                },
                icon: Icon(Icons.remove_shopping_cart)),
            const SizedBox(height: 20),
          ],
        ),
      ],
    );
  }
}
