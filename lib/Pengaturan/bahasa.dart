import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('English'),
            trailing: Icon(Icons.check),
            onTap: () {
              // Logika untuk mengubah bahasa ke Inggris
            },
          ),
          ListTile(
            title: Text('Spanish'),
            trailing: Icon(Icons.check),
            onTap: () {
              // Logika untuk mengubah bahasa ke Spanyol
            },
          ),
          ListTile(
            title: Text('French'),
            trailing: Icon(Icons.check),
            onTap: () {
              // Logika untuk mengubah bahasa ke Perancis
            },
          ),
        ],
      ),
    );
  }
}

// Gunakan kode berikut dalam MaterialApp:

