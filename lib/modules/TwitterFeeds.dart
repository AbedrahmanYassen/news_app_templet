import 'package:flutter/material.dart';
import 'package:news_app_template/shared_ui/navigationDrawer.dart';

/*
this file to get information from twittere using the api's
*/
class TwitterFeeds extends StatefulWidget {
  @override
  _TwitterFeedsState createState() => _TwitterFeedsState();
}

class _TwitterFeedsState extends State<TwitterFeeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twetter Feeds '),
        centerTitle: false,
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Card(
                child: Column(
                  children: [
                    _drawHeader(),
                    _drawBody(),
                    _drawline(),
                    _drawFooter(),
                  ],
                ),
              ));
        },
      ),
      drawer:
          NavigationDrawer() /*this is from the shared ui that we mage to be 
      used in all screens without to make it once to each one */
      ,
    );
  }
  /*these functions to avoid repetiotions in the code only yoi have 
  to call the functions */

  Widget _drawHeader() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: CircleAvatar(
            backgroundImage: ExactAssetImage('assets/images/Untitled.png'),
            radius: 24,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(' Hamada elabadela '),
                Text(
                  ' @hamada',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              ' 21/11/2021 8AM  ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _drawBody() {
    return Padding(
      padding: EdgeInsets.only(),
      child: Text(
        'حملة  التي بدأت قبل شهرين ضد فرنسا ما زالت مستمرة ',
        style: TextStyle(fontSize: 16, height: 1.6),
      ),
    );
  }

  Widget _drawFooter() {
    return Padding(
      padding: EdgeInsets.only(right: 16, left: 16, bottom: 16),
      child: Padding(
        padding: EdgeInsets.only(left: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.repeat,
                      size: 24,
                    ),
                    color: Colors.deepOrange,
                    onPressed: () {}),
                Text('35'),
              ],
            ),
            Row(children: [
              FlatButton(
                child: Text(
                  'Share',
                  style: TextStyle(color: Colors.deepOrange),
                ),
                onPressed: () {},
              ),
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Open',
                    style: TextStyle(color: Colors.deepOrange),
                  )),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _drawline() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade300,
      margin: EdgeInsets.only(top: 16),
    );
  }
}
