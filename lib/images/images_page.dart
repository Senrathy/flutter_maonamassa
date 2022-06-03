import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagens'),
        backgroundColor: Colors.purple[900],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Image.asset(
                'assets/paisagem.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Image.network(
                'https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s900-c-k-c0x00ffffff-no-rj',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/paisagem.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Texto Paisagem',
                  style: TextStyle(
                    backgroundColor: Colors.white.withOpacity(0.5), fontSize: 20,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
