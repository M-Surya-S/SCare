import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        title: const Text(
          "Konsultasi",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFF8F9FD),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                _buildChatBubble(
                  message: "Halo dok!",
                  isSender: false,
                  time: "03.10",
                ),
                _buildChatBubble(
                  message: "Halo, Selamat Pagi!",
                  isSender: true,
                  time: "03.10",
                ),
                _buildChatBubble(
                  message:
                      "Dok, saya ingin tahu lebih banyak tentang stunting. Anak saya kelihatannya tumbuh lebih lambat dibandingkan anak-anak lain seusianya. Apa itu stunting sebenarnya?",
                  isSender: false,
                  time: "03.10",
                ),
              ],
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildChatBubble({
    required String message,
    required bool isSender,
    required String time,
  }) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSender ? Colors.blue : Colors.grey[300],
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(12),
                topRight: const Radius.circular(12),
                bottomLeft: isSender
                    ? const Radius.circular(12)
                    : const Radius.circular(0),
                bottomRight: isSender
                    ? const Radius.circular(0)
                    : const Radius.circular(12),
              ),
            ),
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              message,
              style: TextStyle(
                color: isSender ? Colors.white : Colors.black,
              ),
            ),
          ),
          Text(
            time,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Icon(Icons.insert_emoticon, color: Colors.grey),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Ketik Pesan",
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.camera_alt, color: Colors.grey),
                    onPressed: () {
                      // Tambahkan aksi untuk mengunggah gambar
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.mic, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
