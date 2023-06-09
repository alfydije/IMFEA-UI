//let's start by our home screen
import 'package:flutter/material.dart';
import 'package:imfea/berita/components/news_list_tile.dart';
import 'package:imfea/berita/models/news_model.dart';
import 'package:imfea/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var CarouselSlider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //let's start with the Appbar
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[800],
        title: Text(
          "Berita",
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
              ))
        ],
      ),

      //Let's now work on the body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.0,
              ),
              // Text(
              //   "Recent News",
              //   style: TextStyle(
              //     fontSize: 26,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // SizedBox(
              //   height: 16.0,
              // ),
              //now let's create the cards for the recent news
              Column(
                children: NewsData.recentNewsData
                    .map((e) => NewsListTile(e))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  CarouselOptions({required double aspectRatio, required bool enableInfiniteScroll, required bool enlargeCenterPage}) {}
}
