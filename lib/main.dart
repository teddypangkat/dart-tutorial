import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: new Scaffold(
          appBar: new AppBar(
            title: Text("Flutter layout demo"),
          ),
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/lake.jpeg',
                    width: 600,
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                  titleSection,
                  buttonSection,
                  textSection
                ],
              ),
            ),
          ),
        ));
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Oeshin Lake Campground",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41')
      ],
    ),
  );

  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Icons.call, 'CALL'),
        _buildButtonColumn(Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Icons.share, 'SHARE'),
      ],
    ),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(0.0),
    child: Text(
      'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumlorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
          'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
    ),
  );
}

Column _buildButtonColumn(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(icon, color: Colors.blue),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      )
    ],
  );
}
