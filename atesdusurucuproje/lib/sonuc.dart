import 'package:atesdusurucuproje/main.dart';
import 'package:flutter/material.dart';
import 'package:atesdusurucuproje/kilo.dart';

double _sates = 39.0;
double _skilo = 22.5;
int _ilac = 1;

//'Parol', ---> 1
//'Calpol',---> 1
//'Tamol', ---> 1
//'Tylol', ---> 1
//'Calpol Plus', ---> 2
//'Parol Plus', ---> 2
//'Dolven', ---> 3
//'Pedifen', ---> 3
//'İbufen', ---> 3

void main() {
  runApp(const sonucsayfa());
}

class sonucsayfa extends StatelessWidget {
  const sonucsayfa({Key? key});

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
  Widget ilacText() {
    String resultText = "";
    if (_ilac == 1) {
      if (_sates >= 38.4) {
        if (_skilo >= 5 && _skilo <= 7.5) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Önerilen doz 2 ölçek 10 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n -  Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n -  Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n -  Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        } else if (_skilo >= 8 && _skilo <= 9.5) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Önerilen doz 2 ölçek 10 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n- Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n- Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n- Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        } else if (_skilo >= 10 && _skilo <= 14.5) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Önerilen doz 4 ölçek 20 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n-   Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n\n-   Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n\n-   Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        } else if (_skilo >= 15 && _skilo <= 20.5) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Önerilen doz 6 ölçek 30 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n- Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n- Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n- Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Önerilen doz 8 ölçek 40 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n- Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n- Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n- Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        }
      } else {
        return Expanded(
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: "Bu °C ateş için ilaç kullanımı önerilmez",
                    style: TextStyle(fontSize: 20, color: Colors.red)),
                TextSpan(
                  text:
                      "\n\n\n Bu vücut sıcaklığında henüz ateş düşürücü ilaçlar kullnılması önerilmez.\n",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
        );
      }
    }
    //--------------------------------------------------------
    else if (_ilac == 2) {
      if (_sates >= 38.4) {
        if (_skilo < 10) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text:
                          "Bu kilo için bu ve türevlerindeki ilaç kullanımı önerilmez.",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n - Bu kilo için bu ve bunun benzeri ilaç türleri çocuğunuz için ağır ilaçlardır lütfen zorda kalmadıkça asla kullanmayın ve doktorunuza danışmadan asla çocuğunuza vermeyiniz. ",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        } else if (_skilo >= 10 && _skilo <= 14.5) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Önerilen doz 2 ölçek 10 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n- Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n- Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n- Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        } else if (_skilo >= 15 && _skilo <= 20.5) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Önerilen doz 3 ölçek 15 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n-   Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n\n-   Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n\n-   Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        } else if (_skilo >= 21) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Önerilen doz 4 ölçek 20 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n- Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n- Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n- Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        }
      } else {
        return Expanded(
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: "Bu °C ateş için ilaç kullanımı önerilmez",
                    style: TextStyle(fontSize: 20, color: Colors.red)),
                TextSpan(
                  text:
                      "\n\n\n Bu vücut sıcaklığında henüz ateş düşürücü ilaçlar kullnılması önerilmez.\n",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
        );
      }
    }
    //---------------------------------------------------------------------------------------------------------
    else if (_ilac == 3) {
      if (_sates >= 38.4) {
        if (_skilo < 8) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text:
                          "Bu kilo için bu ve türevlerindeki ilaç kullanımı önerilmez.",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n - Bu kilo için bu ve bunun benzeri ilaç türleri çocuğunuz için ağır ilaçlardır lütfen zorda kalmadıkça asla kullanmayın ve doktorunuza danışmadan asla çocuğunuza vermeyin. ",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        } else if (_skilo >= 8 && _skilo <= 9.5) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Önerilen doz 2 ölçek 10 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n- Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n- Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n- Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        } else if (_skilo >= 10 && _skilo <= 14.5) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Önerilen doz 3 ölçek 15 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n-   Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n\n-   Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n\n-   Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        } else if (_skilo >= 15 && _skilo <= 20.5) {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text:
                          "Önerilen doz 4.5 ölçek 22.5 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n- Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n- Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n- Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Önerilen doz 6 ölçek 30 ml dir.(1 ölçek 5mldir.)",
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                  TextSpan(
                    text:
                        "\n\n\n- Bir ölçek şurup 5 ml olup 1 tatlı kaşığına eşdeğerdir. Fakat her tatlı kaşığı aynı büyüklükte değildir. Doğru miktarda şurup vermek için ilacın içindeki ölçeğini ya da enjektörleri kullanabilirsiniz."
                        "\n- Ateş düşürücü şuruplar çözelti (süspansiyon) şeklindedir. Beklediğinde etken madde dibe çökecektir. Kullanmadan önce çalkalamanız gereklidir."
                        "\n- Ateş düşürücü şurupları açtıktan sonra 1 ay içinde tüketin. Hava ile temas ettikten sonra etkinliği azalabilmektedir. 1 ay içinde tüketmediğiniz şurupları atarak yenisini alabilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        }
      } else {
        return Expanded(
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: "Bu °C ateş için ilaç kullanımı önerilmez",
                    style: TextStyle(fontSize: 20, color: Colors.red)),
                TextSpan(
                  text:
                      "\n\n\n Bu vücut sıcaklığında henüz ateş düşürücü ilaçlar kullnılması önerilmez.\n",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
        );
      }
    }
    return Expanded(child: Text(resultText, style: TextStyle(fontSize: 18)));
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
                MaterialPageRoute(builder: (context) => kilosayfa()),
              );
            },
          ),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
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
              Padding(padding: EdgeInsets.only(top: 5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Sonuç',
                      style: TextStyle(fontSize: 25, color: Colors.green)),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ilacText(), // If-else logic here
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 40)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Text('Tekrar Ölç'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
