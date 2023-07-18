import 'package:flutter/material.dart';

class KuisScreen extends StatefulWidget {
  const KuisScreen({Key? key}) : super(key: key);

  @override
  _KuisScreenState createState() => _KuisScreenState();
}

class _KuisScreenState extends State<KuisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("KUIS"),
      ),
      body: ListView(
        children: <Widget>[
          ListTutorial(
            gambar:
                "https://tse3.mm.bing.net/th?id=OIP.xyVn01XXIoT11NCbrA99xQHaEO&pid=Api&P=0&h=180",
            judul: "Pengelasan Dasar",
          ),
          ListTutorial(
            gambar:
                "https://tse3.mm.bing.net/th?id=OIP.xyVn01XXIoT11NCbrA99xQHaEO&pid=Api&P=0&h=180",
            judul: "Pengelasan Dasar",
          ),
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {
  final String gambar;
  final String judul;

  const ListTutorial({required this.gambar, required this.judul});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Image(
              image: NetworkImage(gambar),
              width: 100.0,
            ),
            Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      judul,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      "Categories: Pengelasan",
                      style: TextStyle(fontSize: 10.0, color: Colors.grey),
                    ),
                    Text(
                      "Tanggal: 12 Agustus 2023",
                      style: TextStyle(fontSize: 10.0, color: Colors.grey),
                    ),
                    Text(
                      "Jam: 14.00 s/d Selesai",
                      style: TextStyle(fontSize: 10.0, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
