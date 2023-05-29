import 'package:flutter/material.dart';
import 'newsList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CNN Indonesia News',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CNN Indonesia'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn.cnnindonesia.com/cnnid/images/logo_cnn_fav.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsListPage(kategori : 'terbaru'),
                  ),
                );
              },
              child: Text('Terbaru'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsListPage(kategori : 'nasional'),
                  ),
                );
              },
              child: Text('Nasional'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsListPage(kategori : 'olahraga'),
                  ),
                );
              },
              child: Text('Olahraga'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsListPage(kategori : 'teknologi'),
                  ),
                );
              },
              child: Text('Teknologi'),
            ),
          ],
        ),
      ),
    );
  }
}
