import 'package:flutter/material.dart';
import 'package:imfea/header_drawer.dart';
import 'package:imfea/util/emoticon_face.dart';
import 'package:imfea/util/exercise_tile.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var excerciseTile = ExcerciseTile;
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        const BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        const BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: ''),
      ]),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Pengaturan"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.money ),
                title: const Text("Berlangganan"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Profil"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Log Out"),
                onTap: () {},
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
                  //gretings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //button login
                      ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[300]!)),
                        onPressed: (){
                          ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(content: Text('Log In / Registrasi')));
                        }, 
                        child: const Text('Log In / Registrasi'),
                      ),
                      //Notifications
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),

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
                          'Search',
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
                        'Take your exrcise!',
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
                            'Quiz',
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

                      // good
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
                child: Center(
                  child: Column(
                    children: [
                      //exercises heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'News',
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

                      //end exercise
                      Expanded(
                          child: ListView(
                        children: [
                          const ExcerciseTile(
                            icon: Icons.favorite,
                            excerciseName: 'Pelatihan Pengelasan telah dilaksanakan',
                            numberOfExcercises: 16,
                            color: Colors.red,
                          ),
                          const ExcerciseTile(
                            icon: Icons.person,
                            excerciseName: '17 Februari 2023 Webinar mesin',
                            numberOfExcercises: 8,
                            color: Color.fromARGB(255, 16, 70, 131),
                          ),
                          const ExcerciseTile(
                            icon: Icons.star,
                            excerciseName: 'Besok 12 agustus 2023 ada webinar !',
                            numberOfExcercises: 26,
                            color: Color.fromARGB(255, 211, 202, 121),
                          ),
                        ],
                      ))
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
