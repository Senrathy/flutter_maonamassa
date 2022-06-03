import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: 'Page3'),
                    builder: (context) => const Page3(),
                  ),
                );
              },
              child: const Text('Page 3 via Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/page3');
              },
              child: const Text('Page 3 via Named'),
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
