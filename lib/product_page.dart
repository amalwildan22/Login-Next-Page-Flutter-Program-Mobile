import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<Map<String, String>> dummyProducts = [
    {
      'name': 'Meja',
      'material': 'Kayu',
      'color': 'Coklat',
      'price': 'IDR 450.000'
    },
    {
      'name': 'Kursi',
      'material': 'Baja',
      'color': 'Hitam',
      'price': 'IDR 250.000'
    },
    {
      'name': 'Lemari',
      'material': 'Kayu',
      'color': 'Putih',
      'price': 'IDR 900.000'
    },
    {
      'name': 'Kasur',
      'material': 'Busa',
      'color': 'Green',
      'price': 'IDR 400.000'
    },
    {
      'name': 'Pintu',
      'material': 'Stainless',
      'color': 'Silver',
      'price': 'IDR 300.000'
    },
    {
      'name': 'Jendela',
      'material': 'Stainless',
      'color': 'Silver',
      'price': 'IDR 250.000'
    },
    {
      'name': 'Wastafel',
      'material': 'Keramik',
      'color': 'Silver',
      'price': 'IDR 450.000'
    },
    {
      'name': 'Rak',
      'material': 'Kayu',
      'color': 'COklat',
      'price': 'IDR 300.000'
    },
    {
      'name': 'Sofa',
      'material': 'Kayu',
      'color': 'Krem',
      'price': 'IDR 600.000'
    },
    // Dapat menambahkan data dummy lainnya
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Product'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          return Card(
            child: ExpansionTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(dummyProducts[index]['name'] ?? ''),
                  ElevatedButton(
                    onPressed: () {
                      // Implementasi logika tambah di sini
                      // Misalnya, tampilkan pesan atau lakukan tindakan tertentu
                      // ketika tombol "Tambah" ditekan
                      print('Tambah ${dummyProducts[index]['name']}');
                    },
                    child: Text('Tambah'),
                  ),
                ],
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Detail produk akan sama dengan masing-masing list yang telah disesuaikan
                    children: [
                      Text(
                          'Material: ${dummyProducts[index]['material'] ?? ''}'),
                      Text('Color: ${dummyProducts[index]['color'] ?? ''}'),
                      Text('Price: ${dummyProducts[index]['price'] ?? ''}'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductPage(),
  ));
}
