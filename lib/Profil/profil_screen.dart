import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Azzahra Salsabila',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Dosen',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16.0),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('azzahra@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('082123344090'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Pemayahan, Indramayu, Indonesia'),
            ),
          ],
        ),
      ),
    );
  }
}
