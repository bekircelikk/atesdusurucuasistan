import 'package:atesdusurucuproje/ilac.dart';
import 'package:flutter/material.dart';
import 'package:atesdusurucuproje/bilgi.dart';

double _ates = 38.5;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      if (_ates < 41.5) {
        _ates += 0.1;
        _ates = double.parse(_ates.toStringAsFixed(1));
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_ates > 36.5) {
        _ates -= 0.1;
        _ates = double.parse(_ates.toStringAsFixed(1));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Doktorum',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Ateş Düşürücü Asistanı',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Çocuklarda Ateş nasıl ölçülür bilmiyorsanız \n   lütfen bunun hakkındaki yazıyı okuyunuz',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const bilgisayfa()),
                  );
                }, //ateş ölçümü nasıl yapılır sayfasına gider.
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 50),
                  child: Text('Oku'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 175),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: _decrementCounter,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  child: Text('Azalt'),
                ),
                style: ElevatedButton.styleFrom(
                  primary: _ates <= 36.5 ? Colors.red : null,
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black),
                ),
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '${_ates.toStringAsFixed(1)} °C',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  child: Text('Arttır'),
                ),
                style: ElevatedButton.styleFrom(
                  primary: _ates >= 41.5 ? Colors.red : null,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          if (_ates <= 36.5)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Minimum 36.5 °C',
                style: TextStyle(fontSize: 12, color: Colors.red),
              ),
            ),
          if (_ates >= 41.5)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Maksimum 41.5 °C',
                style: TextStyle(fontSize: 12, color: Colors.red),
              ),
            ),
          Padding(padding: const EdgeInsets.only(top: 70)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ilacsayfa()),
                  );
                }, //kilo sayfasına gitmek için olan buton.
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Text('Sonraki adım'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
