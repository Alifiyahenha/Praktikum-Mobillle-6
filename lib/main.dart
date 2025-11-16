import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo ListView.builder',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Demo ListView.builder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Dummy data berita
  final List<Map<String, String>> dataBerita = [
    {
      'title': 'Berita 1: Teknologi AI terbaru',
      'published_at': '2025-09-20',
      'image': 'https://picsum.photos/200/300'
    },
    {
      'title': 'Berita 2: Flutter 3.19 dirilis',
      'published_at': '2025-09-21',
      'image': 'https://picsum.photos/200/301'
    },
    {
      'title': 'Berita 3: Startup lokal berkembang',
      'published_at': '2025-09-22',
      'image': 'https://picsum.photos/200/302'
    },
    {
      'title': 'Berita 4: Tren Digital Marketing',
      'published_at': '2025-09-23',
      'image': 'https://picsum.photos/200/303'
    },
    {
      'title': 'Berita 5: Ekonomi kreatif naik daun',
      'published_at': '2025-09-24',
      'image': 'https://picsum.photos/200/304'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: dataBerita.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                title: Text(
                  dataBerita[index]['title'] ?? "Tidak ada judul",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  dataBerita[index]['published_at'] ?? "Tidak ada data",
                  maxLines: 1,
                  style: const TextStyle(fontSize: 16),
                ),
                leading: Image.network(
                  dataBerita[index]['image'] ??
                      'https://picsum.photos/200',
                  fit: BoxFit.cover,
                  width: 100,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
