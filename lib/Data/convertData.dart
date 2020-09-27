import 'dart:convert';

import 'package:http/http.dart' as http;

Future<ConvertData> fetchData() async {
  final response = await http.get('https://api.exchangeratesapi.io/latest');
  print(response.statusCode);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    var myData = json.decode(response.body);
    // print(myData);

    // print(rest);
    return ConvertData.fromJson(myData);
    // return Summary.fromJson(rest["summary"]);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class ConvertData {
  final double cad;
  final double hkd;
  final double isk;
  final double php;
  final double dkk;
  final double huf;
  final double czk;
  final double aud;
  final double ron;
  final double sek;
  final double idr;
  final double inr;
  final double brl;
  final double rub;
  final double hrk;
  final double jpy;
  final double thb;
  final double chf;
  final double sgd;
  final double pln;
  final double bgn;
  final double Try;
  final double cny;
  final double nok;
  final double nzd;
  final double zar;
  final double usd;
  final double mxn;
  final double ils;
  final double gbp;
  final double krw;
  final double myr;
  final String date;

  ConvertData(
      {this.cad,
      this.hkd,
      this.isk,
      this.php,
      this.dkk,
      this.huf,
      this.czk,
      this.aud,
      this.ron,
      this.sek,
      this.idr,
      this.inr,
      this.brl,
      this.rub,
      this.hrk,
      this.jpy,
      this.thb,
      this.chf,
      this.sgd,
      this.pln,
      this.bgn,
      this.Try,
      this.cny,
      this.nok,
      this.nzd,
      this.zar,
      this.usd,
      this.mxn,
      this.ils,
      this.gbp,
      this.krw,
      this.myr,
      this.date});

  factory ConvertData.fromJson(Map<String, dynamic> json) {
    //   print(json['main']['temp']);
    return ConvertData(
      cad: json['rates']['CAD'],
      hkd: json['rates']['HKD'],
      isk: json['rates']['ISK'],
      php: json['rates']['PHP'],
      dkk: json['rates']['DKK'],
      huf: json['rates']['HUF'],
      czk: json['rates']['CZK'],
      aud: json['rates']['AUD'],
      ron: json['rates']['RON'],
      sek: json['rates']['SEK'],
      idr: json['rates']['IDR'],
      inr: json['rates']['INR'],
      brl: json['rates']['BRL'],
      rub: json['rates']['RUB'],
      hrk: json['rates']['HRK'],
      jpy: json['rates']['JPY'],
      thb: json['rates']['THB'],
      chf: json['rates']['CHF'],
      sgd: json['rates']['SGD'],
      pln: json['rates']['PLN'],
      bgn: json['rates']['BGN'],
      Try: json['rates']['TRY'],
      cny: json['rates']['CNY'],
      nok: json['rates']['NOK'],
      nzd: json['rates']['NZD'],
      zar: json['rates']['ZAR'],
      usd: json['rates']['USD'],
      mxn: json['rates']['MXN'],
      ils: json['rates']['ILS'],
      gbp: json['rates']['GBP'],
      krw: json['rates']['KRW'],
      myr: json['rates']['MYR'],
      date: json['date'],
    );
  }
}
