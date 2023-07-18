import 'package:imfea/materi/constants.dart';
import 'package:imfea/materi/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:imfea/home.dart';
import 'components/category.dart';

class HomeMateri extends StatefulWidget {
  const HomeMateri({Key? key}) : super(key: key);

  @override
  State<HomeMateri> createState() => _HomeMateriState();
}

class _HomeMateriState extends State<HomeMateri> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[800],
        title: Text(
          "Materi",
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
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //sorting
                  // Sorting(),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  //category list
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "See All",
                          style: TextStyle(fontSize: 16, color: kblue),
                        ),
                      ),
                    ],
                  ),

                  //now we create model of our images and colors which we will use in our app
                  const SizedBox(
                    height: 20,
                  ),
//we can not use gridview inside column
//use shrinkwrap and physical scroll
                  CategoryList(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
