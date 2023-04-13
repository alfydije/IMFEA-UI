import 'package:flutter/material.dart';
import 'LoginPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _namaPemilik;
  String? _nomorHp;
  String? _email;
  String? _password;
  String? _konfirpass;


  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        var FirebaseFirestore;
        await FirebaseFirestore.instance.collection('users').add({
          'nama_pemilik': _namaPemilik,
          'nomor_hp': _nomorHp,
          'email': _email,
          'password': _password,
          'konfirpass': _konfirpass,
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Data berhasil disimpan'),
          ),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Terjadi kesalahan saat menyimpan data: $e'),
          ),
        );
      }
    }
  }

  bool _isPasswordVisible = false;
  String? _selectedValue = 'Kafe & Coffee Shop';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
        backgroundColor: Colors.blue[800],
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(32.0),
            constraints: const BoxConstraints(maxWidth: 350),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [],
                  ),
                  _gap(),
                  TextFormField(
                    onSaved: (value) => _namaPemilik = value,
                    validator: (value) {
                      // add Nama Pemilik
                      if (value == null || value.isEmpty) {
                        return 'Tidak Boleh Kosong';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Nama',
                      hintText: 'Masukan Nama',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  _gap(),
                  TextFormField(
                    onSaved: (value) => _email = value,
                    validator: (value) {
                      // add Email
                      if (value == null || value.isEmpty) {
                        return 'Tidak Boleh Kosong';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Masukan Email Anda',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  _gap(),
                  TextFormField(
                    onSaved: (value) => _password = value,
                    validator: (value) {
                      //add password
                      if (value == null || value.isEmpty) {
                        return 'Tidak Boleh Kosong';
                      }

                      if (value.length < 6) {
                        return 'Password harus memiliki 6 karakter';
                      }
                      return null;
                    },
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Masukan Pasword Anda',
                        // prefixIcon: const Icon(Icons.lock_outline_rounded),
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(_isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        )),
                  ),
                  _gap(),
                  TextFormField(
                    onSaved: (value) => _konfirpass = value,
                    validator: (value) {
                      // add Alamat
                      if (value == null || value.isEmpty) {
                        return 'Tidak Boleh Kosong';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Konfirmasi Password',
                      hintText: 'Masukan Password Anda',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  _gap(),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Daftar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
