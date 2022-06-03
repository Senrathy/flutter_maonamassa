import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);
  static const String routeName = '/page4';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: const RouteSettings(name: 'Page1'),
                      builder: (context) => const Page1(),
                    ),
                    // ModalRoute.withName('Page2')
                    ((route) => route.isFirst) //apaga todas até a primeira pag.
                    );
              },
              child: const Text('Page 1 via Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/page1', (route) => route.isFirst);
              },
              child: const Text('Page 1 via Named'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Pop'),
            ),
          ],
        ),
      ),
    );
  }
}
