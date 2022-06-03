import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Minha Barra de App',
          style: TextStyle(
            fontFamily: 'Tourney',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.purple[900],
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(10, 10),
                ),
                BoxShadow(
                  color: Colors.yellow,
                  blurRadius: 10,
                  offset: Offset(-10, -10),
                )
              ]),
        ),
      ),
    );
  }
}
