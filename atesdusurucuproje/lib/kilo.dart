import 'package:atesdusurucuproje/ilac.dart';
import 'package:atesdusurucuproje/sonuc.dart';
import 'package:flutter/material.dart';
//import 'package:atesdusurucuproje/main.dart';

void main() {
  runApp(const kilosayfa());
}

class kilosayfa extends StatelessWidget {
  const kilosayfa({Key? key});

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
  static double _kilo = 10.0;

  void _incrementCounter() {
    setState(() {
      if (_kilo < 50.0) {
        _kilo += 0.5;
        _kilo = double.parse(_kilo.toStringAsFixed(1));
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_kilo > 5.0) {
        _kilo -= 0.5;
        _kilo = double.parse(_kilo.toStringAsFixed(1));
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ilacsayfa()),
            );
          },
        ),
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
            padding: const EdgeInsets.only(top: 225),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Çocuğunuzun Kilosunu Giriniz',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          Padding(padding: const EdgeInsets.only(bottom: 20)),
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
                  primary: _kilo <= 5.0 ? Colors.red : null,
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black),
                ),
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '${_kilo.toStringAsFixed(1)} Kg',
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
                  primary: _kilo >= 50.0 ? Colors.red : null,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          if (_kilo <= 5.0)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Minimum 5 Kg',
                style: TextStyle(fontSize: 12, color: Colors.red),
              ),
            ),
          if (_kilo >= 50.0)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Maksimum 50 Kg',
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
                    MaterialPageRoute(builder: (context) => sonucsayfa()),
                  );
                },
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
