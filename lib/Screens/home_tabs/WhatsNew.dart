import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _drawWidget(),
          _drawStory(),
        ],
      ),
    );
  }

  Widget _drawWidget() {
    TextStyle _headerTitle = TextStyle(
      color: Colors.white,
      fontSize: 22,
    );
    TextStyle _description = TextStyle(
      color: Colors.white,
      fontSize: 18,
    );

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage('assets/images/Untitled.png'),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'here only the truth ',
              style: _headerTitle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'we are only afraid of God  ',
              style: _description,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawStory() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 16,
              left: 16,
            ),
            child: _DrawSectiontitle('Top Stories'),
          ),
          _drawSingleCard(),
          _drawDivider(),
          _drawSingleCard(),
          _drawDivider(),
          _drawSingleCard(),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _drawDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 8 , bottom: 4 ,  top: 16),
                  child: _DrawSectiontitle('Recent Updates'),
                ),
                _drawRecentUpdatesCard(Colors.deepOrange),
                _drawRecentUpdatesCard(Colors.yellow),
                _drawSpace(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawDivider() {
    return Container(
      width: double.infinity * 0.1,
      height: 1,
      color: Colors.grey.shade400,
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

  Widget _DrawSectiontitle(String s) {
    return Text(
      s,
      style: TextStyle(
        color: Colors.grey.shade700,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }

  Widget _drawRecentUpdatesCard(Color color) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/images/Untitled.png'),
                  fit: BoxFit.cover),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Container(
            padding: EdgeInsets.only(left : 16, right:  24 , top: 2 , bottom: 2),
            margin: EdgeInsets.all(5),
            child: Text(
              'SPORT',
              style: TextStyle(
                color: Colors.white ,
                fontWeight: FontWeight.w500 ,
                
              ),
            ),
            decoration: BoxDecoration(
              color: color ,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top : 8 , left: 16 , right: 16 , bottom: 8),
            child: Text('The bear trump has left the white house '),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8 , right: 16 , left: 16 , bottom: 16 ,),
            child: Row(
              children: [
                Icon(Icons.timer , color: Colors.grey,size: 12,),
                SizedBox(width: 8,),
                Text('15 Minutes', style: TextStyle(
                  color: Colors.grey ,
                  fontSize: 12 ,
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget _drawSpace(){
    return SizedBox(
      height: 50 ,
      width: 50,
    );
  }
}
