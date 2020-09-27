import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'EURO',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
            ),
            Text(
              'last refresh',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {},
              child: Text(
                'Refresh',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 10.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderSide: new BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        hintText: 'Enter a number',
                        //helperText: 'Enter numbers',
                        // labelText: 'Life story',
                        suffixText: 'EURO',
                        suffixStyle: const TextStyle(color: Colors.green)),
                  ),
                ),
                RaisedButton(
                  child: Text('Convert', style: TextStyle(color: Colors.white)),
                  onPressed: null,
                ),
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(140.0, 0.0, 150.0, 0.0),
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text('CAD :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('HKD :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('ISK :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('PHP :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('DKK :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('HUF :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('CJK :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('AUD :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('RON :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('SEK :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('IDR :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('INR :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('BRL :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('RUB :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('HRK :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('JPY :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('THB :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('CHF :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('SGD :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('PLN :'),
                      trailing: Text('1235'),
                    ),
                    ListTile(
                      title: Text('BGN:'),
                      trailing: Text('1235'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
