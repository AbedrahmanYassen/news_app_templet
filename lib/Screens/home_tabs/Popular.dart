import 'package:flutter/material.dart';
class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context , position){
        return Card(
          child: _drawSingleCard(),
        );

      },
      itemCount: 20,
    );
  }
  Widget _drawSingleCard() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image(
                      image: ExactAssetImage('assets/images/Untitled.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'the world global waning Annual submit',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('عبدالرحمن ياسين '),
                            Row(
                              children: [
                                Icon(Icons.timer),
                                Text('15 min'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
