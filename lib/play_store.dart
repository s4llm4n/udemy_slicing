import 'package:flutter/material.dart';

class PlayStore extends StatelessWidget {
  const PlayStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Play Store')),
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(
                index == 0 ? 16 : 8,
                16,
                index == 7 ? 16 : 8,
                16,
              ),
              child: itemApp(),
            );
          }),
    );
  }

  Column itemApp() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(11),
          child: Image.network(
            "https://cdn-1.webcatalog.io/catalog/netflix/netflix-icon-filled-256.webp?v=1669863995747",
            width: 80,
            height: 80,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Netflix',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        Text('18 MB'),
      ],
    );
  }
}
