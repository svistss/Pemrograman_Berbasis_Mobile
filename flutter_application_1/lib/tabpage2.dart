import 'package:flutter/material.dart';  

//#TODO_9 Atur nama statefulWidget class untuk tab kedua  
class Contact extends StatefulWidget {  
  const Contact({super.key});  

  @override  
  State<Contact> createState() => _ContactState();  
}  

class _ContactState extends State<Contact> {  
  //Menampilkan nama  
  final List<String> names = [  
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

  final List<String> imagePaths = [  
    'assets/gambar/1.jpeg',  
    'assets/gambar/2.jpeg',  
    'assets/gambar/3.jpeg',  
    'assets/gambar/4.jpeg',  
    'assets/gambar/5.jpeg',  
    'assets/gambar/6.jpeg',  
    'assets/gambar/7.jpeg',  
    'assets/gambar/8.jpeg',  
    'assets/gambar/9.jpeg',  
    'assets/gambar/10.jpeg',  
    'assets/gambar/11.jpeg',  
    'assets/gambar/12.jpeg',  
    'assets/gambar/13.jpeg',  
    'assets/gambar/14.jpeg',  
    'assets/gambar/15.jpeg',  
  ];  

  //#TODO_10 Bangun tampilan pada tab kedua berbentuk grid dengan tampilan 2 baris dan 3 kolom  
  @override  
  Widget build(BuildContext context) {  
    return GridView.builder(  
      padding: const EdgeInsets.all(10), //Padding di sekitar grid  
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(  
        crossAxisCount: 3, //3 kolom  
        crossAxisSpacing: 10, //Jarak antar kolom  
        mainAxisSpacing: 10, //Jarak antar baris  
        childAspectRatio: 1, //Rasio lebar dan tinggi item  
      ),  
      itemCount: names.length, //Jumlah total nama  
      itemBuilder: (context, index) {  
        return Container(  
          decoration: BoxDecoration(  
            //Warna latar belakang
            color: Colors.grey[300],   
            borderRadius: BorderRadius.circular(8), //Membuat sudut melengkung  
          ),  
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [  
              CircleAvatar(  
                radius: 30, // Ukuran avatar  
                //Menggunakan gambar sesuai index
                backgroundImage: AssetImage(imagePaths[index]),   
              ),  
              //Jarak foto dan nama
              const SizedBox(height: 5), 
              //Nama di bawah avatar
              Text(names[index], textAlign: TextAlign.center),   
            ],  
          ),  
        );  
      },  
    );  
  }  
}