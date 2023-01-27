import 'package:flutter/material.dart';

class Facebook extends StatelessWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Facebook')),
      body: SizedBox(
        height: 200,
        child: ListView.builder(
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
                child: itemStory(),
              );
            }),
      ),
    );
  }

  Widget itemStory() {
    return SizedBox(
      height:300, 
      width:130,  
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://cdn-1.webcatalog.io/catalog/netflix/netflix-icon-filled-256.webp?v=1669863995747',
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget itemGroup() {
    return SizedBox(
      width: 90,
      child: Column(
        children: [
          SizedBox(
            width: 85,
            height: 85,
            child: Stack(
              children: [
                Material(
                  elevation: 8,
                  borderRadius: BorderRadiusDirectional.circular(16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://cdn-1.webcatalog.io/catalog/netflix/netflix-icon-filled-256.webp?v=1669863995747',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.black26,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(2),
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
    );
  }
}
