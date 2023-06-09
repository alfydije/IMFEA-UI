import 'package:flutter/material.dart';
import 'package:imfea/header_drawer.dart';
import 'package:imfea/util/emoticon_face.dart';
import 'package:imfea/util/exercise_tile.dart';
import 'package:imfea/screens/home_screen.dart';
import 'package:imfea/LoginPage.dart';
import 'package:imfea/webinar/web_screen.dart';
import 'package:imfea/materi/screens/home_materi.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(backgroundColor: Colors.blue[800],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );
                },
                  ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Pengaturan"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.money),
                title: const Text("Berlangganan"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.web),
                title: const Text("Webinar"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WebScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.newspaper),
                title: const Text("Berita"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text("Materi"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeMateri()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profil"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.login),
                title: const Text("Masuk"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  //Search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Cari',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //take your exrcise!
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Belajar Apa Hari Ini ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //4 diff face
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // news feed
                      Column(
                        children: [
                          const EmoticonFace(
                            emoticonFace: '📝',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Kuis',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      // fine
                      Column(
                        children: [
                          const EmoticonFace(
                            emoticonFace: '💻',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Webinar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      
                      Column(
                        children: [
                          const EmoticonFace(
                            emoticonFace: '📚',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Materi',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[200],
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //exercises heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Jadwal Pelatihan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // Add your content here

                      SizedBox(height: 10),
                      Container(
                        width: 380,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'PELATIHAN PENGELASAN DASAR\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Pemateri : Alfiyah\n',
                                  ),
                                  TextSpan(
                                    text: 'Tanggal : 7 Juli 2023\n',
                                  ),
                                  TextSpan(
                                    text: 'Waktu : 08.00 - Selesai\n',
                                  ),
                                  TextSpan(
                                    text: 'https://linktr.ee/pmipolindra',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      Container(
                        width: 380,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'PELATIHAN PENGELASAN DASAR\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Pemateri : Azzahra\n',
                    ),
                    TextSpan(
                      text: 'Tanggal : 12 Juni 2023\n',
                    ),
                    TextSpan(
                      text: 'Waktu : 12.00 - Selesai\n',
                    ),
                    TextSpan(
                      text: 'https://linktr.ee/pmipolindra',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

                      SizedBox(height: 10),
                      Container(
                        width: 380,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'PELATIHAN PENGELASAN DASAR\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Pemateri : Siffa\n',
                                  ),
                                  TextSpan(
                                    text: 'Tanggal : 3 Agustus 2023\n',
                                  ),
                                  TextSpan(
                                    text: 'Waktu : 15.00 - Selesai\n',
                                  ),
                                  TextSpan(
                                    text: 'https://linktr.ee/pmipolindra',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
