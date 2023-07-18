import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:imfea/home.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  Future<void> _openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Gagal membuka URL
      print('Gagal membuka URL: $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[800],
        title: Text(
          "Webinar",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(
                context);
                Navigator.push(
                  context,
                MaterialPageRoute(builder: (context) => home()),
              );
            },
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Container(
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
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
                            text: 'https://forms.gle/9eZkrLuSUcCd8hzk7',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _openUrl('https://forms.gle/9eZkrLuSUcCd8hzk7');
                              },
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
                  color: Colors.grey[200],
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
                            text: 'PELATIHAN MESIN DASAR\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Pemateri : Salsabila\n',
                          ),
                          TextSpan(
                            text: 'Tanggal : 9 Juni 2023\n',
                          ),
                          TextSpan(
                            text: 'Waktu : 09.00 - Selesai\n',
                          ),
                          TextSpan(
                            text: 'https://forms.gle/9eZkrLuSUcCd8hzk7',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _openUrl('https://forms.gle/9eZkrLuSUcCd8hzk7');
                              },
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
                  color: Colors.grey[200],
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
                            text: 'PELATIHAN TERMODINAMIKA\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Pemateri : Alfiyah\n',
                          ),
                          TextSpan(
                            text: 'Tanggal : 24 Juli 2023\n',
                          ),
                          TextSpan(
                            text: 'Waktu : 15.00 - Selesai\n',
                          ),
                          TextSpan(
                            text: 'https://forms.gle/9eZkrLuSUcCd8hzk7',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _openUrl('https://forms.gle/9eZkrLuSUcCd8hzk7');
                              },
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
                  color: Colors.grey[200],
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
                            text: 'PELATIHAN PENGENALAN BUBUT\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Pemateri : Djayanti\n',
                          ),
                          TextSpan(
                            text: 'Tanggal : 2 April 2023\n',
                          ),
                          TextSpan(
                            text: 'Waktu : 12.00 - Selesai\n',
                          ),
                          TextSpan(
                            text: 'https://forms.gle/9eZkrLuSUcCd8hzk7',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _openUrl('https://forms.gle/9eZkrLuSUcCd8hzk7');
                              },
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
                  color: Colors.grey[200],
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
                            text: 'PELATIHAN PENGELASAN LANJUTAN\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Pemateri : Siffa\n',
                          ),
                          TextSpan(
                            text: 'Tanggal : 29 Mei 2023\n',
                          ),
                          TextSpan(
                            text: 'Waktu : 09.00 - Selesai\n',
                          ),
                          TextSpan(
                            text: 'https://forms.gle/9eZkrLuSUcCd8hzk7',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _openUrl('https://forms.gle/9eZkrLuSUcCd8hzk7');
                              },
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
                  color: Colors.grey[200],
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
                            text: 'PELATIHAN KEAMANAN DALAM KERJA\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Pemateri : Nur azzizah\n',
                          ),
                          TextSpan(
                            text: 'Tanggal : 7 Juni 2023\n',
                          ),
                          TextSpan(
                            text: 'Waktu : 12.00 - Selesai\n',
                          ),
                          TextSpan(
                            text: 'https://forms.gle/9eZkrLuSUcCd8hzk7',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _openUrl('https://forms.gle/9eZkrLuSUcCd8hzk7');
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Tambahkan kontainer lain dengan tautan dan pengaturan serupa
            ],
          ),
        ),
      ),
    );
  }
}
