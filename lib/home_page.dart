import 'package:flutter/material.dart';
import 'consultation_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Halo Surya,", style: TextStyle(fontSize: 18)),
                    Text(
                      "Selamat Datang!",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.notifications, size: 28),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(16),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nutrisi Harian",
                          style: TextStyle(color: Colors.white)),
                      CircularProgressIndicator(
                        value: 0.7,
                        backgroundColor: Colors.grey,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("3152 kkal", style: TextStyle(color: Colors.white)),
                      Text("900 kkal", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text("Features",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildFeatureButton(Icons.lock, "Katering"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConsultationPage()),
                    );
                  },
                  child: _buildFeatureButton(Icons.chat, "Konsultasi"),
                ), // Mengarahkan ke halaman consultation_page
                _buildFeatureButton(Icons.restaurant, "Nutrisi Harian"),
              ],
            ),
            const SizedBox(height: 20),
            const Text("Makanan Terakhir",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            _buildLastMealCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 1) {
            // Jika item Chat ditekan
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ConsultationPage()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _buildFeatureButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: Icon(icon, color: Colors.black),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget _buildLastMealCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/nasi_putih.jpeg"),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Nasi Putih",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const Text("129 kkal - 100 gram"),
                Row(
                  children: [
                    _buildNutritionInfo("2.66g", "Protein"),
                    _buildNutritionInfo("27.9g", "Karbo"),
                    _buildNutritionInfo("0.28g", "Lemak"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNutritionInfo(String value, String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(label),
        ],
      ),
    );
  }
}
