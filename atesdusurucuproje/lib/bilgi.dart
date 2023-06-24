import 'package:atesdusurucuproje/sonuc.dart';
import 'package:flutter/material.dart';
import 'package:atesdusurucuproje/main.dart';

void main() {
  runApp(const MaterialApp(
    home: bilgisayfa(),
    debugShowCheckedModeBanner: false,
  ));
}

class bilgisayfa extends StatelessWidget {
  const bilgisayfa({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Doktorum',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyApp(),
              ),
            );
          },
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Ateş Düşürücü Asistanı',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 400,
                  height: 200,
                  child: Image(
                    image: AssetImage("resimler/bilgi1.jpg"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Ateş Nasıl Ölçülür ?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Ölçüm yapılan yere göre vücut sıcaklığı değişmektedir.Bu nedenle nerden ölçüm yaptığınız önemlidir.'
                    '\nGerçek vücut sıcaklığını yansıtması açısından makattan ölçüm daha doğru sonuç vermekle birlikte pratik olmaması ve hijyen nedeniyle rutin olarak önerilmemektedir.'
                    '\nMakat, ağız, kulak ve cilt üzerinden ölçüm için 38 C, koltuk altı için 37,5 C  ve üzeri ateş kabul edilir.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    '-> Koltuk Altı: Ateş ölçer açılır, yanıp sönen C işareti görülünce koltuk altına konulur. Yanıp sönen C işareti sabitlenince ölçüm tamamlanmış demektir. Cihaza göre değişmekle birlikte 5 sn ile 60 sn arasında ölçüm tamamlanmaktadır.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Ölçüm öncesinde koltuk altı silinerek kurulanmalıdır. Metal uç tam koltuk altının orta kısmına yerleştirilir, kol gövdeye doğru hafifçe bastırılarak derece ucunun cilde tam olarak temas etmesi sağlanmalıdır.'
                    '\n'
                    '\n-Gerçek vücut sıcaklığından biraz daha düşük (yaklaşık 0,5 C) değerleri yansıtır.'
                    '\n-Dış etkenlerden çabuk etkilenmez, güvenilirdir.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    '-> Kulak: Ateş ölçerin kapağı açılır. Kulak içine yerleşen kısmın kirlenmemesi için filtre varsa takılır. Düğmeye basarak ölçüm için hazır hale getirilir. Yanıp sönen çizgi ya da C işareti hazır olduğunu gösterir. Cihazın uç kısmı nazikçe kulak içine yerleştirilir ve tekrar düğmeye basılır. 2-3 sn içinde sesli uyarı ile birlikte ölçüm tamamlanır.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    '-Hızlı ölçüm yapılabilir.'
                    '\n-Kulak enfeksiyonu varsa normalin üzerinde ölçüm yapma ihtimali yüksektir.'
                    '\n-3 aydan küçük çocuklar için uygun değildir. Bebeklerin kulakları küçük olduğundan tam olarak kulak yoluna yerleştirilemez.'
                    '\n'
                    '\n->Cilt üzeri: Cihazın ayarı varsa vücut sıcaklığını ölçen hale getirilir. Düğmesine basılarak ölçüm için hazır hale getirilir. Cildin ıslaksa kurulanır. Alın ve şakak kısmından yaklaşık 3-5 cm mesafeden çocuğun yüzüne tutularak düğmeye basılır. 1-2 sn içinde ölçüm yapılmış olur. Farklı yerlerden bir kaç ölçüm yaparak en yüksek sıcaklık belirlenir.'
                    '\n'
                    '\n-Hızlı ölçüm yapılır.'
                    '\n-Dış faktörlerden çabuk etkilenir. Güvenilir değildir.'
                    '\n-Birkaç defa ölçüm yapmak gerekir.'
                    '\n'
                    '\n->Makat: Koltuk altından ölçüm yapan cihazlar makattan da ölçüm yapabilmektedir. Metal uç tamamen anüse girecek şekilde tutulur. Uç kısmının yaklaşık 1-1,5 cm itilmesi yeterli olacaktır. Popoyu iki taraftan sıkılarak sabit kalması sağlanır. 5 sn ile 60 sn arasında ölçüm tamamlanacaktır.'
                    '\n'
                    '\n-Gerçek vücut sıcaklığına en yakın ölçüm burdan yapılır.'
                    '\n-Makatta zedelenmeye yol açabileceği ve hijyen açısından sorun oluşturabileceği için tercih edilmez.'
                    '\n'
                    '\nHızlı ölçüm yapan cilt üzeri veya kulaktan ateş ölçer öncelikle tercih edilebilir. Fakat ateş saptanmışsa koltuk altı ateş ölçer ile kesin ölçüm yapmak doğru olacaktır.'
                    '\n',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 400,
                  height: 200,
                  child: Image(
                    image: AssetImage("resimler/bilgi2.jpg"),
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\n'
                  'Hangi Ateş Ölçeri Kullanmalıyım ?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Ateş ölçümü için farklı cihazlar mevcuttur. Koltuk altı, ağız, kulak, makat ve cilt üzerinden ölçüm yapabilen elektronik cihazlar vardır. Koltuk altı ölçüm yapan aletler daha tutarlı sonuç verdiği için tercih edilebilir. Hareketli ya da huzursuz olan çocuklarda 1 dk bekleyerek ölçüm yapmak zor olabilir. Öncelikle temassız cilt üzerinden ateş ölçer ile ölçüm yapıp yüksek sonuç çıkarsa koltuk altından ateşi teğit etmek uygun olacaktır.'
                    '\n'
                    '\n3 aydan büyük çocuklarda kulaktan ateş ölçer ile hızlı ve tutarlı ölçümler yapılabilir. Kulak enfeksiyonu varlığında normalden daha yüksek ölçüm yapabilir.'
                    '\n'
                    '\nDaha önceleri kullanılan civalı termometreler zehirlenmelere yol açabildiği için yasaklanmıştır. Bu nedenle sadece elektronik cihazlar kullanımdadır.'
                    '\n'
                    '\nZaman içinde yanlış ölçümlere yol açabildiği için tüm elektronik cihazlara 6 ayda bir kalibrasyon yapılması gerekmektedir.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\n'
                  'Çocuğum Ateşlendi Ne Yapmalıyım ?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Çocuğunuzun vücudunu sıcak hissettiniz. Derece ile ölçerek  ateşinin olduğunu gördünüz.'
                    '\n'
                    '\n'
                    '-Öncelikle üzeri çok sıkı giydirilmişse üstündekileri çıkartın, tek kat zıbın ya da atlet kalacak şekilde  bırakabilirsiniz. Özellikle bebekler üşümesin diye kat kat giydirip battaniyelerle sarmak tek başına vücut sıcaklığının yükselmesine yol açabilmektedir. Üzerine örttüğünüz battaniye gibi örtüleri kaldırın.\n'
                    '-Ateş düşürücü şurubunuz varsa içirebilirsiniz. (Çocuğunuzun genel durumu iyiyse, huzursuz değilse şurup içirmeden de takip edebilirsiniz) Şurupların etkisi 30 dk içinde başlayacaktır. Bu arada ılık uygulama yapmaya başlayabilirsiniz.\n'
                    '-Ilık su ile yüzünü, başını, boyun ve koltuk altı bölgesini yıkamak hatta ılık su ile duş aldırmak hızlı bir şekilde ateşinin düşmesini sağlayacaktır. Su sıcaklığının 30-34 C olması idealdir.  \n'
                    '-Islak bez ile vücudunu ıslatıp, buharlaşmasını bekleyin. Kurudukça tekrar bez ile silebilirsiniz. Islak bezi üzerinde tutmanıza gerek yoktur.\n'
                    '-Kolonya, sirke, alkol vs maddeleri kullanmayın. Suyun hızlı buharlaşmasını sağlayan bu maddeler ateşi hızlı düşürür fakat ardından ateşin tekrar yükselmesine yol açar. Kokusu nedeniyle çocukları rahatsız edebilir, zehirlenmeye yol açabilmektedir. Sadece su kullanmanız daha uygun olacaktır.\n'
                    '-Soğuk su kullanmayınız. Soğuk su ile ıslattığınızda titremeye yol açacaktır. Tireme ile kaslarımız ısı ürettiği için ateş yükselmeye devam edecektir.\n'
                    '-Ateşi olan çocuklarda genellikle el ve ayaklar soğuk, gövde ve baş kısmı çok sıcaktır. Halk arasındaki tabirle ‘kan gövdeye toplanmıştır’ . Uç kısımlara eldiven-çorap giydirebilir, gövdesini çıplak bırakabilirsiniz. Ilık uygulamayı kol ve bacaklara değil; koltuk altı, gövde, baş, boyun kısımlarına uygulamak daha doğrudur.\n'
                    '-Ateşle beraber metabolizma hızlanır, terleme ve buharlaşma ile su kaybı olur ve vücudun su ihtiyacı artar. Çocuğunuza bol bol su ve sulu gıdalar vermeniz uygun olacaktır.\n',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  '      Ateşin Derecesi ile Hastalık Şiddeti\n                      Orantılı Mıdır ?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Çocuğun ateşinin çok yüksek olması çok şiddetli ağır bir hastalık geçirdiğini göstermez. Viral gribal enfeksiyonlarda 40 dereceye kadar yükselen ateş olabileceği gibi; ciddi bakteriyel enfeksiyonlar ateş olmadan ya da hafif ateş ile geçirilebilmektedir.'
                    '\n\n'
                    'Özellikle 3 yaş altı çocuklarda koltuk altından 38,5 C ve diğer bölgelerden 39 C üzeri ateş varlığında ciddi bir enfeksiyon saptanma oranı artmaktadır.'
                    '\n\n'
                    'Ateş yükselmesi beyin hasarına yol açmaz. Sıcak çarpması gibi durumlarda vücut sıcaklığı 41 C üzerine çıkarsa beyin hasarına yol açabilir (buna ateş değil hipertermi diyoruz). Enfeksiyonlara bağlı olan ateş kontrollü bir şekilde yükseldiği için hayati tehlike yaratmaz. Ateşin derecesinden ziyade çocuğun genel durumu hastalığın şiddeti konusunda belirleyici olmaktadır.\n',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  '         Ateşle Birlikte Titreme Başladı,\n                      Ne Yapmalıyım ?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Ateş hızlı yükseldiği sırada ciltte alacalı görünüm, titreme görülebilmektedir. Vücudun iç kısmından ateşin yükselmeye başlaması sonucu olmaktadır. Titremeye başladıysa sık aralıklarla ateşini ölçmek faydalı olacaktır. Üzerindeki kıyafetleri inceltip, ılık uygulama yapmaya başlayabilirsiniz.\n'
                    '\n'
                    'Ateş yükseldiğinde eller ve ayaklar soğuk gövde ve baş kısmı sıcak olabilmektedir.\n',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\n'
                  '  Hangi Durumlarda Acil Olarak Hastaneye \n                   Başvurmam Gerekir ?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    '# Üç aydan küçük bebekler\n'
                    '# kemoterapi alan çocuklar\n'
                    '# ateş ile birlikte ciltte mor döküntü-lekeler çıkmışsa\n'
                    '# ateşli havale geçirdiyse\n'
                    '# genel durumu iyi değil, uyku hali, bilinç bulanıklığı varsa\n'
                    '# burnu açık olmasına rağmen zor nefes alıyorsa\n'
                    '# aşıları yapılmamışsa ciddi bir hastalık geçirme ihtimali yüksektir, en kısa sürede hastaneye başvurmanız gerekir.\n'
                    '# 3 yaşından küçük çocuklarda ateş 3 günden uzun sürdüyse\n'
                    '# tüm çocuklar için ateş 5 günden uzun devam ediyorsa hastaneye başvurmanız uygun olacaktır.\n',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\n'
                  'Ateş Dışında Vücut Sıcaklığının Yükseldiği\n                Durumlar Var Mıdır ?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Bazen dış etkenlere bağlı olarak vücut sıcaklığı yükselebilir, sıcak çarpması buna örnektir..  Yenidoğan bebeklerde sıcak havalarda çok sıkı sarıp sarmalanma nedeniyle de vücut sıcaklığı normalden yüksek ölçülebilmektedir. Hipertermi dediğimiz bu durum vücut sıcaklığının dış etkenlere bağlı olarak kontrolsüz yükselmesidir.\n'
                    '\nAteş ise beyinde hipotalamus dediğimiz vücudun termostatı olarak görev yapan merkezin kontrollü ve istemli olarak vücut sıcaklığı eşiğini artırması sonucu gelişir. Vücuda giren mikroplarla savaşmak adına verdiği bir tepkidir. Ateş düşürücüler hipotalamusun belirlediği bu eşik değeri azaltarak etkisini gösterir.\n'
                    '\nÇocuklar diş çıkarırken her şeyi ağızlarına götürüp ısırdıkları için ateşli hastalık geçirme ihtimalleri artabilir. Diş çıkarma vücut sıcaklığını hafif artırsa bile belirgin derecede ateş yapmaz. Özellikle 38,5 C ve üzeri ateşi diş çıkarmaya bağlamak doğru değildir.'
                    '\n',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\n'
                  'Ateş Nasıl Düşürülür ?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Ateşi kontrol altına almak için yapabileceğiniz üç şey vardır:'
                    '\n# Üzerindeki kıyafetleri inceltmek, çıkarmak'
                    '\n# ılık uygulama yapmak, duş aldırmak'
                    '\n# ağrı kesici- ateş düşürücü ilaçlar vermek',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sonucsayfa(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Text('Geri dön'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
