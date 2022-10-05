import 'dart:math';

import 'package:flutter/material.dart';

class Favourates extends StatefulWidget {
  @override
  _FavouratesState createState() => _FavouratesState();
}

class _FavouratesState extends State<Favourates> {
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.cyanAccent,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Card(
            child: Column(
              children: [
                _drawAuther(),
                _drawNewsContent(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _drawAuther() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage(
                        'assets/images/Untitled.png',
                      ),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'عبدالرحمن ياسين',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      '15 minutes ',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Life style',
                      style: TextStyle(color: _getRandomColors()),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.bookmark_border,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _drawNewsContent() {
    return Row(
      children: [
        Container(
          width: 124,
          height: 124,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage(
                'assets/images/Untitled.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                ' the islamic university support  ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),
              Text(
                'للتسجيل الرجاء زيارة هذا الموقع ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Random random = Random();

  Color _getRandomColors() {
    return colors[random.nextInt(colors.length - 1)];
  }
}
