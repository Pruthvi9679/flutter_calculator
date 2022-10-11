import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Calculator UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: RaisedButton(
        onPressed: () {},
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
        shape: CircleBorder(),
        color: btncolor,
        padding: EdgeInsets.all(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
        backgroundColor: Colors.black,
        body: Padding(
          padding:EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: 
            Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.white, fontSize: 100),

                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("AC", Colors.grey, Colors.black),
                  calcbutton("%", Colors.orange, Colors.black),
                  calcbutton("/", Colors.orange, Colors.black),
                  calcbutton("DEL", Colors.orange,Colors.black)
                ],
              ),
              SizedBox(
                height: 15,                
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("7", Colors.white, Colors.black),
                  calcbutton("8", Colors.white, Colors.black),
                  calcbutton("9", Colors.white, Colors.black),
                  calcbutton("*", Colors.orange,Colors.black)
                ],
              ),
              SizedBox(
                height: 15,                
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("4", Colors.white, Colors.black),
                  calcbutton("5", Colors.white, Colors.black),
                  calcbutton("6", Colors.white, Colors.black),
                  calcbutton("-", Colors.orange,Colors.black)
                ],
              ),
              SizedBox(
                height: 15,                
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("1", Colors.white,Colors.black),
                  calcbutton("2", Colors.white, Colors.black),
                  calcbutton("3", Colors.white, Colors.black),
                  calcbutton("+", Colors.orange,Colors.black)
                ],
              ),
              SizedBox(
                height: 15,                
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                    onPressed: () {},
                    shape: StadiumBorder(),
                    child: Text(
                      "0",
                      style: TextStyle(fontSize: 35, color: Colors.black),
                    ),
                    color: Colors.grey.shade800,
                  ),
                  calcbutton('.', Colors.grey.shade800, Colors.black),
                  calcbutton('=', Colors.amber.shade700, Colors.black),
                ],
              )
             ],
            )           
          )
        )
      );
  }
}