import 'package:flutter/material.dart';
import 'package:imfea/Berlangganan/langganan.dart';
import 'package:imfea/home.dart';

class PembayaranScreen extends StatefulWidget {
  const PembayaranScreen({Key? key}) : super(key: key);

  @override
  State<PembayaranScreen> createState() => _PembayaranScreenState();
}

class _PembayaranScreenState extends State<PembayaranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[800],
        title: Text(
          "Berlangganan",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => home()),
              );
            },
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          heightFactor: 0.5, // Sesuaikan dengan faktor tinggi yang diinginkan
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "2103063",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Azzahra Salsabila",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Indramayu, Jawa Barat",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 380,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ayok berlangganan untuk bisa mengakses semua pelatihan !",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>LanggananScreen())); // Aksi ketika tombol ditekan
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors
                                .grey[400], // Ubah warna tombol menjadi abu-abu
                          ),
                          child: Text("Berlangganan"),
                        ),
                    ],
                  ),
                ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
