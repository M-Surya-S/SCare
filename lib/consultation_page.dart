import 'package:flutter/material.dart';

class ConsultationPage extends StatelessWidget {
  const ConsultationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konsultasi'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Konsultasi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/daffa.jpg'),
                    ),
                    title: const Text('Muhammad Daffa'),
                    subtitle: const Text(
                      'Dok, saya ingin tahu lebih banyak tentang stunting. Anak saya kelihatannya tumbuh lebih lambat ...',
                    ),
                    trailing: const Text('5 min'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatPage(),
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/surya.png'),
                    ),
                    title: Text('Muhammad Surya'),
                    subtitle: Text(
                      'Stunting adalah kondisi di mana pertumbuhan fisik seorang anak terhambat karena kekurangan...',
                    ),
                    trailing: Text('8.00'),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/qudus.png'),
                    ),
                    title: Text('Mohammad Qudus'),
                    subtitle: Text('Apa itu stunting Dok?'),
                    trailing: Text('7.50'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konsultasi'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: const [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ChatBubble(
                    text: 'Halo dok!',
                    time: '03.10',
                    isSender: false,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ChatBubble(
                    text: 'Halo, Selamat Pagi!',
                    time: '03.10',
                    isSender: true,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ChatBubble(
                    text:
                        'Dok, saya ingin tahu lebih banyak tentang stunting. Anak saya kelihatannya tumbuh lebih lambat dibandingkan anak-anak lain seusianya. Apa itu stunting sebenarnya?',
                    time: '03.10',
                    isSender: false,
                  ),
                ),
              ],
            ),
          ),
          const ChatInputField(),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final String time;
  final bool isSender;

  const ChatBubble({
    required this.text,
    required this.time,
    required this.isSender,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: isSender ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              color: isSender ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            time,
            style: TextStyle(
              color: isSender ? Colors.white70 : Colors.black54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class ChatInputField extends StatelessWidget {
  const ChatInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Ketik Pesan',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
