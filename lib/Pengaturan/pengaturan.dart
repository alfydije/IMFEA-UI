import 'package:flutter/material.dart';
import 'package:imfea/LoginPage.dart';
import 'package:imfea/home.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Validasi berhasil, lakukan sesuatu dengan data yang dikirimkan
      String name = _nameController.text;
      String email = _emailController.text;
      // Lakukan operasi yang diinginkan, seperti mengirim data ke server, dll.
      // ...
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[800],
        title: Text(
          "Pengaturan",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
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
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        children: [
          ListTile(
            title: Text('Notification'),
            trailing: Switch(
              value: true,
              onChanged: (bool value) {},
            ),
          ),
          ListTile(
            title: Text('Sound'),
            trailing: Switch(
              value: false,
              onChanged: (bool value) {},
            ),
          ),
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: false,
              onChanged: (bool value) {},
            ),
          ),
          ListTile(
            title: Text('Language'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigasi ke halaman pengaturan bahasa
            },
          ),
          ListTile(
            title: Text('Help & Support'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigasi ke halaman bantuan dan dukungan
            },
          ),
          ListTile(
            title: Text('Sign Out'),
            trailing: Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          LoginPage())); // Tindakan untuk keluar dari akun
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyForm(),
    );
  }
}
