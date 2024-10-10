import 'package:flutter/material.dart';  
import 'tabpage1.dart';   
import 'tabpage2.dart';   
import 'tabpage3.dart';   

//#TODO_14 Buat function main dan jalankan aplikasi  
void main() {  
  runApp(const MyApp());  
}  

//#TODO_1 Atur nama statelessWidget Class  
class MyApp extends StatelessWidget {  
  const MyApp({super.key});  
  @override  
  Widget build(BuildContext context) {  
    // #TODO_3 Bangun MaterialApp dan Arahkan property home ke statefulWidget Class  
    return MaterialApp(  
      title: 'Flutter App',  
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(  
        primarySwatch: Colors.blue,  
      ),  
      home: const HomePage(), // Mengarah ke StatefulWidget Class  
    );  
  }  
}  

//#TODO_2 Atur nama statefulWidget Class  
class HomePage extends StatefulWidget {  
  const HomePage({super.key});  
  
  @override  
  // ignore: library_private_types_in_public_api  
  _HomePageState createState() => _HomePageState();  
}  

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {  
  late TabController _tabController;  
  final TextEditingController _searchController = TextEditingController(); // Controller untuk kolom pencarian  

  @override  
  void initState() {  
    super.initState();  
    // Menginisialisasi TabController  
    _tabController = TabController(length: 3, vsync: this);  
  }  

  @override  
  void dispose() {  
    _tabController.dispose(); // Membersihkan controller  
    _searchController.dispose(); // Membersihkan controller pencarian  
    super.dispose();  
  }  

  @override  
  Widget build(BuildContext context) {  
    //#TODO_4 Bangun Scaffold  
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Chattin'), // #TODO_5 Buat tampilan AppBar  
        backgroundColor: const Color.fromARGB(120, 66, 103, 14),  
        foregroundColor: Colors.white,  
        actions: [  
          IconButton(icon: const Icon(Icons.camera_alt_outlined), onPressed: () {}),    
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),  
        ],  
      ),  
      body: Column(  
        children: [  
          Row(  
            children: [  
              //Kolom pencarian  
              Padding(  
                padding: const EdgeInsets.all(8.0),  
                child: SizedBox(  
                  width: 250,  
                  child: TextField(  
                    controller: _searchController,  
                    decoration: const InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Search',  
                      prefixIcon: Icon(Icons.search),  
                    ),  
                  ),  
                ),  
              ),  
            ],  
          ),  
          // TabBar  
          TabBar(  
            controller: _tabController,  
            tabs: const [  
              Tab(icon: Icon(Icons.chat_bubble_outline_rounded), text: 'Chat'),   
              Tab(icon: Icon(Icons.contacts_outlined), text: 'Contact'),   
              Tab(icon: Icon(Icons.person_outlined), text: 'Profile'),    
            ],  
          ),  
          // TabBarView  
          Expanded(  
            child: TabBarView(  
              controller: _tabController,  
              children: const [  
                Chat(), // Mengganti dengan tab pertama   
                Contact(), // Mengganti dengan tab kedua   
                Profile(), // Mengganti dengan tab ketiga   
              ],  
            ),  
          ),  
        ],  
      ),  
    );  
  }  
}