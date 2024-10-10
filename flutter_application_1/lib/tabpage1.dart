import 'package:flutter/material.dart';  

//#TODO_7 Atur nama statefulWidget class untuk tab pertama
class Chat extends StatefulWidget {  
  const Chat({super.key});  

  @override  
  State<Chat> createState() => _ChatState();  
}  

class _ChatState extends State<Chat> {  
  //#TODO_8 Bangun tampilan pada tab pertama berbentuk listtile minimal 15 list  
  final List<String> imagePaths = List.generate(  
    15,  
    (index) => 'assets/gambar/${index + 1}.jpeg', //Untuk menyimpan gambar  
  );  

  //Tampilan nama  
  final List<String> titles = [  
    'C.Ronaldo',  
    'Messi',  
    'Antony',  
    'Neuer',  
    'Muller',  
    'Gerd Muller',  
    'Griezmann',  
    'Ngolo Kante',  
    'Hary Kane',  
    'Kim Min Jae',  
    'Son Heung Min',  
    'Justin Hubner',  
    'Mees Hilgers',  
    'Erick Tohir',  
    'Shin Tae Yong',  
  ];  

  //Menampilkan Isi pesan  
  final List<String> descriptions = [  
    'Onde jogar futebol, Ronaldo?',  
    'Hei Messi, Cómo estás?',  
    'Main yang bener napa!',  
    'Mang Neuer, nuju dimana?',  
    'Kenapa fiz?',  
    'Jangan jago jago bang',  
    'Jangan lupa makan ya..',  
    'Nitip beli cilor dong, 15 rb',  
    'Kapann mau ke Bandung?',  
    'Naneun dol-aol geos-ida',  
    '후라이드 치킨을 먹어라',  
    'Main santai bang..',  
    'Tampilkan yang terbaik kawan!!',  
    'Hafiz, saya tunggu kamu di GBK!',  
    'Saya izin coach, tidak latihan',  
  ];  

  //Tanggal mengirim pesan  
  final List<String> dates = [  
    '22.25',  
    '19.34',  
    '19.30',  
    '18.45',  
    '18.18',  
    '16.25',  
    '15.50',  
    '15.45',  
    '14.48',  
    '14.00',  
    '13.21',  
    '12.56',  
    'Kemarin',  
    '14/04/2024',  
    '20/03/2022',  
  ];  

  @override  
  Widget build(BuildContext context) {  
    return ListView.builder(  
      // Menyesuaikan dengan jumlah gambar
      itemCount: imagePaths.length,  
      itemBuilder: (context, index) {  
        return Card(  
          elevation: 2,
          //Mengatur jarak  
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),  
          child: ListTile(  
            // Padding untuk isi ListTile  
            contentPadding: const EdgeInsets.all(10),  
            leading: CircleAvatar(  
              radius: 26,  
              backgroundImage: AssetImage(imagePaths[index]),  
            ),  
            title: Row(  
              mainAxisAlignment: MainAxisAlignment.spaceBetween,  
              children: [  
                Text(titles[index]),  
                Text(  
                  dates[index],  
                  style: const TextStyle(color: Colors.grey),//Menampilkan warna text untuk tanggal
                ),  
              ],  
            ),  
            subtitle: Text(  
              //Mengambil pesan berdasarkan daftar descriptions
              descriptions[index],  
              //Menampilkan warna text nama
              style: const TextStyle(color: Colors.black54),   
            ),  
            onTap: () {  
              //Melakukan aksi saat di tap  
              ScaffoldMessenger.of(context).showSnackBar(  
                SnackBar(content: Text('Tapped on ${titles[index]}')),  
              );  
            },  
          ),  
        );  
      },  
    );  
  }  
}