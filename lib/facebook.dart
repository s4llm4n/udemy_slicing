import 'package:flutter/material.dart';

class Facebook extends StatelessWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Facebook')),
      body: SizedBox(
        width: 80,
        child: Column(
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://cdn-1.webcatalog.io/catalog/netflix/netflix-icon-filled-256.webp?v=1669863995747',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          Icons.group,
                          color: Colors.blue,
                          size: 20,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Netflix Developer',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
