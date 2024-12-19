import 'package:flutter/material.dart';
import 'login_page.dart'; // Pastikan Anda membuat halaman LoginPage di sini

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data pengguna yang akan ditampilkan
    String name = "Muhammad Surya Saniansyah";
    String birthDate = "20 Desember 2003";
    String email = "saniansyah@example.com";
    String address = "Jalan Raya No. 123, Balikpapan";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Pengguna"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Informasi Pengguna",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildProfileItem("Nama", name),
            _buildProfileItem("Tanggal Lahir", birthDate),
            _buildProfileItem("Email", email),
            _buildProfileItem("Alamat", address),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman login ketika tombol logout ditekan
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Tombol Logout berwarna merah
                ),
                child: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan data profil pengguna
  Widget _buildProfileItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "$label: ",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
