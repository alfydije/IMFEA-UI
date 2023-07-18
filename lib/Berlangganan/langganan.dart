import 'package:flutter/material.dart';
import 'package:imfea/home.dart';

class LanggananScreen extends StatefulWidget {
  const LanggananScreen({Key? key}) : super(key: key);

  @override
  State<LanggananScreen> createState() => _LanggananScreenState();
}

class _LanggananScreenState extends State<LanggananScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _email;
  String? _alamat;
  String? _nama;
  String? _instansi;

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        var FirebaseFirestore;
        await FirebaseFirestore.instance.collection('users').add({
          'email': _email,
          'alamat': _alamat,
          'nama':_nama,
          'instansi':_instansi
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Data berhasil disimpan'),
          ),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => home()),
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
                  _gap(),
                  TextFormField(
                    onSaved: (value) => _nama = value,
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
                    onSaved: (value) => _alamat = value,
                    validator: (value) {
                      // add Email
                      if (value == null || value.isEmpty) {
                        return 'Tidak Boleh Kosong';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Alamat',
                      hintText: 'Masukan Alamat Anda',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  _gap(),
                  TextFormField(
                    onSaved: (value) => _instansi = value,
                    validator: (value) {
                      // add Email
                      if (value == null || value.isEmpty) {
                        return 'Tidak Boleh Kosong';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Instansi',
                      hintText: 'Masukan Instansi Anda',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  _gap(),
                  ElevatedButton(
                    onPressed: _submitForm,
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.grey[400], // Ubah warna tombol menjadi abu-abu
                    ),
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

