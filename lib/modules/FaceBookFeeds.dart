import 'package:flutter/material.dart';
import 'package:news_app_template/shared_ui/navigationDrawer.dart';
class FaceBookFeeds extends StatefulWidget {
  @override
  _FaceBookFeedsState createState() => _FaceBookFeedsState();
}

class _FaceBookFeedsState extends State<FaceBookFeeds> {
  TextStyle hashStyle = TextStyle(
    color: Colors.orange,
  );

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
                    _drawHashtag(),
                    _drawBody(),
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Text(' Hamada elabadela '),
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
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Colors.grey,
            ),
            Transform.translate(
              offset: Offset(-12, 0),
              child: Text('25',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                  )),
            )
          ],
        )
      ],
    );
  }

  Widget _drawBody() {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Image(
          image: ExactAssetImage('assets/images/Untitled.png'),
          width: double.infinity,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.25,
        ),);
  }

  Widget _drawFooter() {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        FlatButton(onPressed: (){}, child: Text('10 COMMENTS', style: hashStyle,)),
Row(
  children: [
    FlatButton(onPressed: (){}, child: Text('SHARE' , style: hashStyle,)),
    FlatButton(onPressed: (){}, child: Text('OPEN',style: hashStyle,)),

  ]
)
      ],
    );
  }

  Widget _drawHashtag() {
    return Container(
      child: Wrap(
        children: [
          FlatButton(
            onPressed: () {},
            child: Text(
              '#BoyycotFrance',
              style: hashStyle,
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              '#BoyycotFrance',
              style: hashStyle,
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              '#BoyycotFrance',
              style: hashStyle,
            ),
          ),
        ],
      ),
    );
  }

  
}