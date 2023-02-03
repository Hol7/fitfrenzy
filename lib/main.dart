import 'package:fitfrenzy/actuality_page.dart';
import 'package:fitfrenzy/calendar_page.dart';
import 'package:fitfrenzy/chat_page.dart';
import 'package:fitfrenzy/home_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blueGrey,

        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,



        // Define the default font family.
        fontFamily: 'Montserrat',

      ),

      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    CalendarPage(),
    ActualityPage(),
    ChatPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   // title: const Text("FITFRENZY"),
      //   elevation: 0.0,
      //   title: Image.asset('images/logo.png', fit: BoxFit.cover),
      //
      // ),

      body: pages[currentPage],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     debugPrint('Floating ');
      //   },
      //   child: const Icon(Icons.add),
      // ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,


        destinations: const [
          NavigationDestination(icon: Icon(Icons.home, ),   label: "Acceuil",  ),
          NavigationDestination(icon: Icon(Icons.calendar_month ,  ), label: "Calendrier"),
          NavigationDestination(icon: Icon(Icons.newspaper_outlined , ), label: "Actualités"),
          NavigationDestination(icon: Icon(Icons.chat_rounded,  ), label: "Chat"),
        ],
        onDestinationSelected: (int index){
          setState(() {
            currentPage = index;
          });
        } ,
        selectedIndex: currentPage,
      ),
    );
  }
}
