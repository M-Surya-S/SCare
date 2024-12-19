import 'package:flutter/material.dart';

class NutritionPage extends StatelessWidget {
  const NutritionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nutrisi Harian"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Nutrisi yang Harus Dipenuhi Hari Ini",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kalori", style: TextStyle(color: Colors.white)),
                      Text("2000 kkal", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Protein", style: TextStyle(color: Colors.white)),
                      Text("50 g", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lemak", style: TextStyle(color: Colors.white)),
                      Text("70 g", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Karbohidrat", style: TextStyle(color: Colors.white)),
                      Text("300 g", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Serat", style: TextStyle(color: Colors.white)),
                      Text("30 g", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Sumber Nutrisi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Membuat kartu makanan dengan gambar yang berbeda
            _buildNutrientSourceCard("assets/nasi_putih.jpeg", "Nasi Putih", "129 kkal", "100 gram", "2.66g", "Protein", "27.9g", "Karbo", "0.28g", "Lemak"),
            _buildNutrientSourceCard("assets/ayam_panggang.jpg", "Ayam Panggang", "150 kkal", "100 gram", "20g", "Protein", "0g", "Karbo", "5g", "Lemak"),
            _buildNutrientSourceCard("assets/sayur_bayam.jpg", "Sayur Bayam", "40 kkal", "100 gram", "3g", "Protein", "6g", "Karbo", "0.4g", "Lemak"),
          ],
        ),
      ),
    );
  }

  // Memodifikasi fungsi _buildNutrientSourceCard untuk menerima gambar sebagai parameter
  Widget _buildNutrientSourceCard(String imagePath, String food, String calories, String weight, String protein, String proteinLabel, String carbs, String carbsLabel, String fat, String fatLabel) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(imagePath), // Menampilkan gambar berdasarkan parameter imagePath
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(food, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("$calories - $weight"),
                Row(
                  children: [
                    _buildNutritionInfo(protein, proteinLabel),
                    _buildNutritionInfo(carbs, carbsLabel),
                    _buildNutritionInfo(fat, fatLabel),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan informasi nutrisi seperti Protein, Karbo, Lemak
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
