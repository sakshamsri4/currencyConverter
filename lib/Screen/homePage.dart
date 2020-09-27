import 'package:currency_converter/Data/convertData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<ConvertData> convert;
  double _value = 0.0;

  @override
  void initState() {
    super.initState();
    _value = 0.0;
    convert = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ConvertData>(
      future: convert,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return test(snapshot.data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return CircularProgressIndicator();
      },
    );
  }

  Widget test(ConvertData convertData) {
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
              'last refresh ' + '${convertData.date}',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  _value = 0;
                });
              },
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
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderSide: new BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        hintText: '0.0',
                        //helperText: 'Enter numbers',
                        // labelText: 'Life story',
                        suffixText: 'EURO',
                        suffixStyle: const TextStyle(color: Colors.green)),
                    onChanged: (value) {
                      _value = double.parse(value);
                    },
                  ),
                ),
                RaisedButton(
                  child: Text('Convert', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text('CAD :'),
                      trailing: Text(
                          (_value * convertData.cad).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('HKD :'),
                      trailing: Text(
                          (_value * convertData.hkd).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('ISK :'),
                      trailing: Text(
                          (_value * convertData.isk).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('PHP :'),
                      trailing: Text(
                          (_value * convertData.php).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('DKK :'),
                      trailing: Text(
                          (_value * convertData.dkk).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('HUF :'),
                      trailing: Text(
                          (_value * convertData.huf).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('CZK :'),
                      trailing: Text(
                          (_value * convertData.czk).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('AUD :'),
                      trailing: Text(
                          (_value * convertData.aud).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('RON :'),
                      trailing: Text(
                          (_value * convertData.ron).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('SEK :'),
                      trailing: Text(
                          (_value * convertData.sek).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('IDR :'),
                      trailing: Text(
                          (_value * convertData.idr).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('INR :'),
                      trailing: Text(
                          (_value * convertData.inr).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('BRL :'),
                      trailing: Text(
                          (_value * convertData.brl).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('RUB :'),
                      trailing: Text(
                          (_value * convertData.rub).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('HRK :'),
                      trailing: Text(
                          (_value * convertData.hrk).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('JPY :'),
                      trailing: Text(
                          (_value * convertData.jpy).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('THB :'),
                      trailing: Text(
                          (_value * convertData.thb).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('CHF :'),
                      trailing: Text(
                          (_value * convertData.chf).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('SGD :'),
                      trailing: Text(
                          (_value * convertData.sgd).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('PLN :'),
                      trailing: Text(
                          (_value * convertData.pln).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('BGN:'),
                      trailing: Text(
                          (_value * convertData.bgn).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('TRY:'),
                      trailing: Text(
                          (_value * convertData.Try).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('CNY:'),
                      trailing: Text(
                          (_value * convertData.cny).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('NOK:'),
                      trailing: Text(
                          (_value * convertData.nok).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('NZD:'),
                      trailing: Text(
                          (_value * convertData.nzd).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('ZAR:'),
                      trailing: Text(
                          (_value * convertData.zar).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('USD:'),
                      trailing: Text(
                          (_value * convertData.usd).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('MXN:'),
                      trailing: Text(
                          (_value * convertData.mxn).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('ILS:'),
                      trailing: Text(
                          (_value * convertData.ils).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('GBP:'),
                      trailing: Text(
                          (_value * convertData.gbp).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('KRW:'),
                      trailing: Text(
                          (_value * convertData.krw).toStringAsPrecision(8)),
                    ),
                    ListTile(
                      title: Text('MYR:'),
                      trailing: Text(
                          (_value * convertData.myr).toStringAsPrecision(8)),
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
