import 'package:flutter/material.dart';
import 'dart:math';
import 'package:kurs4_sabak4/misaldar/misal_barak.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int solNomer = 1;
  int onNomer = 3;

  void ozgort() {
    Random random = Random();

// random.nextInt(6); ======> min: 0 - max: 5
// nextInt(100) randomno san alip kel => minimum 0, maximum 99
    // 0 + 1 = 1
    // 1 + 1 = 2
    // 2 + 1 = 3
    // 3 + 1 = 4
    // 4 + 1 = 5
    // 5 + 1 = 6

    setState(() {
      solNomer = random.nextInt(6) + 1;
      onNomer = random.nextInt(6) + 1;
    });

    print('solNomer ==> $solNomer');
    print('onNomer ==> $onNomer');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBB603),
      appBar: AppBar(
        backgroundColor: const Color(0xffFCCF38),
        centerTitle: true,
        title: Text(
          'Dice App'.toUpperCase(),
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(25),
            splashColor: const Color(0xFF352B0A),
            onTap: ozgort,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    'assets/images/dice_$solNomer.png',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 24.0),
                Expanded(
                  child: Image.asset(
                    'assets/images/dice_$onNomer.png',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
