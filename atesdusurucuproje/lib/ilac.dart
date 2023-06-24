import 'package:flutter/material.dart';
import 'package:atesdusurucuproje/kilo.dart';
import 'package:atesdusurucuproje/main.dart';

void main() {
  runApp(const ilacsayfa());
}

class ilacsayfa extends StatelessWidget {
  const ilacsayfa({Key? key});
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
  String selectedValue = 'Parol';
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
              MaterialPageRoute(builder: (context) => MyApp()),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 100,
                height: 100,
                child: Image(
                  image: AssetImage("resimler/ilac1.jpg"),
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 10, right: 10)),
              SizedBox(
                width: 100,
                height: 100,
                child: Image(
                  image: AssetImage("resimler/ilac2.jpg"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 100,
                height: 100,
                child: Image(
                  image: AssetImage("resimler/ilac3.jpg"),
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 10, right: 10)),
              SizedBox(
                width: 100,
                height: 100,
                child: Image(
                  image: AssetImage("resimler/ilac4.jpg"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 100,
                height: 100,
                child: Image(
                  image: AssetImage("resimler/ilac5.jpg"),
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 10, right: 10)),
              SizedBox(
                width: 100,
                height: 100,
                child: Image(
                  image: AssetImage("resimler/ilac6.jpg"),
                ),
              ),
            ],
          ),
          Padding(padding: const EdgeInsets.only(top: 20)),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text(
              'Lütfen Kullanmak İstediğiniz İlacı Seçiniz;',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )
          ]),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: DropdownButton<String>(
              value: selectedValue,
              onChanged: (newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
              items: <String>[
                'Parol',
                'Calpol',
                'Tamol',
                'Tylol',
                'Calpol Plus',
                'Parol Plus',
                'Dolven',
                'Pedifen',
                'İbufen',
              ].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => kilosayfa()),
                  );
                }, //kilo sayfasına gitmek için olan buton.
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
