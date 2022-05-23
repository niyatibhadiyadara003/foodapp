import 'dart:async';
import 'package:flutter/material.dart';
import 'Forthpage.dart';
import 'Secondpage.dart';
import 'Thirdpage.dart';
import 'fifthpage.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Homepage(),
        "Secondpage": (context) => Secondpage(),
        "Thirdpage": (context) => Thirdpage(),
        "Fourthpage": (context) => Fourthpage(),
        "Fifthpage": (context) => Fifthpage(),
      },
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushNamed("Secondpage");
    });
  }

  @override
  Widget build(BuildContext context) {
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
            child: Image.asset("assets/images/logo1.png", height: 30)),
      ),
    );
  }
}

/*
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ChessBoardController controller = ChessBoardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Chess",),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            flex:9,
            child: Center(
              child: ChessBoard(
                controller: controller,
                boardColor: BoardColor.green,
                arrows: [
                  BoardArrow(
                    from: 'd2',
                    to: 'd4',
                    color: Colors.green.withOpacity(0.0),
                  ),
                ],
                boardOrientation: PlayerColor.white,
              ),
            ),
          ),

          Expanded(
            flex:1,
            child: ValueListenableBuilder<Chess>(
              valueListenable: controller,
              builder: (context, game, _) {
                return Text(
                  controller.getSan().fold(
                    '',
                        (previousValue, element) =>
                    previousValue + '\n' + (element ?? ''),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              controller.loadPGN("newpage");
            });
          }, child: Text("Restart")),
          (controller.isCheckMate())?Text("gfd",style: TextStyle(fontSize: 25,color: Colors.red),):Container()
        ],
      ),
    );
  }
}*/
