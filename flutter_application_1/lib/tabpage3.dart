import 'package:flutter/material.dart';  

//#TODO_11 Atur nama statefulWidget class untuk tab ketiga  
class Profile extends StatefulWidget {  
  const Profile({super.key});  

  @override  
  State<Profile> createState() => _ProfileState();  
}  

class _ProfileState extends State<Profile> {  
  //#TODO_12 Bangun tampilan pada tab ketiga     
  @override  
  Widget build(BuildContext context) {  
    return Center(  
      child: Column(  
        mainAxisAlignment: MainAxisAlignment.center,  
        children: [  
          //Foto Profil  
          Container(  
            width: 100, //Lebar gambar  
            height: 100, //Tinggi gambar  
            decoration: BoxDecoration(  
              shape: BoxShape.circle, //Membuat bingkai lingkaran  
              image: const DecorationImage(  
                image: AssetImage("assets/gambar/foto_profile.jpg"), //Mengganti foto sesuai dengan path  
                fit: BoxFit.cover, //Menyesuaikan ukuran foto  
              ),  
              border: Border.all(  
                color: Colors.blueAccent, //Warna bingkai  
                width: 2, //Ketebalan bingkai  
              ),  
            ),  
          ),  
          const SizedBox(height: 20), //Jarak antara gambar dan teks  
          // Menampilkan nama lengkap  
          const Text(  
            'Muhammad Hafiz Fathurrohman',  
            style: TextStyle(  
              fontSize: 20,  
              fontWeight: FontWeight.bold,  
            ),  
          ),  
          const SizedBox(height: 10), //Jarak antara nama dan email  
          //Menampilkan email  
          Text(  
            '2210631170137@student.unsika.ac.id',  
            style: TextStyle(  
              fontSize: 16,  
              color: Colors.grey[600],  
            ),  
          ),  
        ],  
      ),  
    );  
  }  
}