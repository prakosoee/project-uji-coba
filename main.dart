import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.home), // Ikon home di pojok kiri
                  const SizedBox(width: 65), // Jarak antara ikon dan judul
                  Text(
                    "Aplikasi Uji Coba",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.menu), // Hamburger widget di sebelah kanan
                onPressed: () {
                  // Tambahkan aksi yang ingin dilakukan ketika hamburger widget ditekan
                },
              ),
            ],
          ),
        ),
        body: Container(
          color: Color(0xffee7d7d), // Warna latar belakang ListView
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.jZZkuwE5vrfsgjK3IoEytgAAAA?w=172&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7' // URL gambar kedua
                        ),
                    radius: 30,
                  ),
                  title: Text(
                    'Megalodon',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    'Ketua Partai PDIP',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
