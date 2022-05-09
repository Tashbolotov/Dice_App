import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int solJak = 2;
  int onJak = 6;

  void baskandaOzgort() {
    Random random = Random();
    solJak = random.nextInt(6) + 1;
    onJak = random.nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: AppBar(
        title: Text(
          'Тапшырма -05'.toUpperCase(),
          style: const TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xffFF5353),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                //GestureDetector knopka basylganda bilinbegen / InkWell knopka2 basylganda bilingen
                child: InkWell(
                  onTap: baskandaOzgort,
                  child: Image.asset('assets/image/dice$solJak.png'),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: InkWell(
                  onTap: baskandaOzgort,
                  //ishtegenin teksheru
                  // print('GestureDetector ====> $GestureDetector');
                  child: Image.asset('assets/image/dice$onJak.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
