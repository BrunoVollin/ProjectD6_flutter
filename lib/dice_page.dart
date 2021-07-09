import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget get _body {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text("0", style: TextStyle(fontSize: 100)),
            Text("0", style: TextStyle(fontSize: 50)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DieButton(name: 'D4'),
                DieButton(name: 'D6'),
                DieButton(name: 'D8'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DieButton(name: 'D10'),
                DieButton(name: 'D12'),
                DieButton(name: 'D20'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DieButton(name: '+'),
                DieButton(name: 'D20'),
                DieButton(name: '-'),
              ],
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projeto D6"),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/bg.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          _body,
        ],
      ),
    );
  }
}

class DieButton extends StatelessWidget {
  const DieButton({Key? key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 100,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('$name'),
          style: ElevatedButton.styleFrom(
            primary: Colors.black.withOpacity(0.4),
            onPrimary: Colors.white,
          ),
        ),
      ),
    );
  }
}
