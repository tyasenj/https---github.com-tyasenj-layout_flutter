import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //BUTTON SECTION
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    //TEXTSECTION
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pulau Padar adalah pulau ketiga terbesar di kawasan Taman Nasional Komodo,'
        'setelah Pulau Komodo dan Pulau Rinca. Pulau ini relatif lebih dekat ke Pulau'
        'Rinca dari pada ke Pulau Komodo, yang dipisahkan oleh Selat Lintah.'
        'Di sekitar pulau ini terdapat pula tiga atau empat pulau kecil.'
        ' (Tyase Nisaan Jamilaa - 2241720012)',
        softWrap: true,
      ),
    );

    // Menyusun semua bagian dalam ListView
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'gambar.jpg', // Pastikan gambar ini ada di folder yang benar
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // Tambahkan titleSection di widget tree
            buttonSection, // Tambahkan buttonSection di widget tree
            textSection, // Tambahkan textSection di widget tree
          ],
        ),
      ),
    );
  }
}

// Button builder function
Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

// Title section
Widget titleSection = Container(
  padding: const EdgeInsets.all(32.0),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const Text(
                'Wisata Pulau Padar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              'Lesser Sunda Islands, Nusa Tenggara Timur, Indonesia',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red,
      ),
      const Text('41'),
    ],
  ),
);
