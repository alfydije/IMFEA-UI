import 'package:flutter/material.dart';
import 'package:imfea/util/emoticon_face.dart';
import 'package:imfea/util/exercise_tile.dart';

class home extends StatefulWidget{
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
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: ''),        
      ]),
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
            //Hi alfii!
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hi alfii!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 8,
          ),
          Text('14 feb 2023',
          style: TextStyle(color: Colors.blue[200]),
          ),
              ],
            ),
            //Notifications
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.notifications,
              color: Colors.white,
              ),
            )
          ],
          ),

          SizedBox(
            height: 25  ,
          ),

          //Search bar
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Search',
              style: TextStyle(
                color: Colors.white,
              ),
              ),
            ],
            ),
        ),

        SizedBox(
            height: 25  ,
          ),

          //take your exrcise!
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Take your exrcise!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ],
          ),

          SizedBox(
            height: 25  ,
          ),

          //4 diff face
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // news feed
              Column(
                children: [
                  EmoticonFace(emoticonFace: '📰',
                  ),
                  SizedBox(height: 8,
                  ),
                  Text('News Feed',
                  style: TextStyle(color: Colors.white),
                  ),
                ],
                ),

              // fine
              Column(
                children: [
                  EmoticonFace(
                    emoticonFace: '📰',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'News Feed',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),

              // good
              Column(
                children: [
                  EmoticonFace(
                    emoticonFace: '📰',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'News Feed',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),

              // excllent
              Column(
                children: [
                  EmoticonFace(
                    emoticonFace: '📰',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'News Feed',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ), 
        ),
        SizedBox(
          height: 25,
        ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey[200],
              child: Center(
                child: Column(children: [
                  
                  //exercises heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Exerxises',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
        
                  //end exercise
                  Expanded(
                    child: ListView(
                      children: [
                          ExcerciseTile(
                            icon: Icons.favorite,
                            excerciseName: 'Speaking Skills',
                            numberOfExcercises: 16,
                            color: Colors.red,
                          ),
                          ExcerciseTile(
                            icon: Icons.person,
                            excerciseName: 'Reading Skills',
                            numberOfExcercises: 8,
                            color: Color.fromARGB(255, 16, 70, 131),
                          ),
                          ExcerciseTile(
                            icon: Icons.star,
                            excerciseName: 'Writing Skills',
                            numberOfExcercises: 26,
                            color: Color.fromARGB(255, 211, 202, 121),
                          ),
                      ],
                    )
                  )
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