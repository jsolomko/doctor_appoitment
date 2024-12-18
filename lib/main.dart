import 'package:doctor_appoitment/ui/current_doctor_widget.dart';
import 'package:doctor_appoitment/ui/near_doctors.dart';
import 'package:doctor_appoitment/ui/search_doctor_widget.dart';
import 'package:doctor_appoitment/ui/themes_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Raleway',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        primaryColor: Colors.white,
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          /* appBar: AppBar(
            title: Text("TabBar"),
          ),*/
          body: const TabBarView(
            children: [
              MyHomePage(title: 'Hi James'),
              MyHomePage(title: 'Hi James'),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white, // Цвет фона для TabBar
            child: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.calendar_month),
                ),
                Tab(
                  icon: Icon(Icons.chat_bubble),
                ),
                Tab(
                  icon: Icon(Icons.person_outline_sharp),
                ),
              ],
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
            ),
          ),
        ),
      ),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(),
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello,", style: TextStyle(fontSize: 16, color: Colors.grey)),
            Text(
              widget.title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Image(image: AssetImage("assets/images/Frame.png")),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardDoctorWidget(),
              SearchDoctorWidget(),
              ThemesIconWidget(),
              Text(
                textAlign: TextAlign.left,
                "Near Doctor",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              NearDoctorWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
