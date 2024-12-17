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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
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
              MyHomePage(title: 'Hello,\nHi James'),
              MyHomePage(title: 'Hello,\nHi James'),
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
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CardDoctorWidget(),
            const Card(
                margin: EdgeInsets.only(top: 10.0, bottom: 12.0),
                color: Colors.grey,
                child: TextField(
                    decoration: InputDecoration(
                  prefix: Icon(Icons.search),
                  hintText: 'Search doctor or health issue',
                  filled: true,
                ))),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 12.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [Icon(Icons.radar), Text("Covid 19")],
                  ),
                  Column(
                    children: [Icon(Icons.radar), Text("Doctor")],
                  ),
                  Column(
                    children: [Icon(Icons.radar), Text("Medicine")],
                  ),
                  Column(
                    children: [Icon(Icons.radar), Text("Hospital")],
                  )
                ],
              ),
            ),
            NearDoctorWidget()
          ],
        ),
      ),
    );
  }
}

class NearDoctorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 12.0),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 16.0),
              child: Text("Near Doctor")),
          const Row(
            children: [
              Icon(Icons.person_outline_sharp),
              Column(
                children: [
                  Text("Dr. Joseph Brostito"),
                  Text("Dental Specialist")
                ],
              ),
              Icon(Icons.place),
              Text("1.2 KM")
            ],
          ),
          const Text("_____________________________"),
          const Row(
            children: [
              Icon(Icons.watch_later_outlined),
              Text("4,8 (120 Reviews)"),
              Icon(Icons.watch_later_outlined),
              Text("Open at 17.00"),
            ],
          )
        ],
      ));
}

class CardDoctorWidget extends StatelessWidget {
  const CardDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) => const Card(
        margin: EdgeInsets.only(top: 16.0, bottom: 10.0),
        color: Colors.blue,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.person),
                Column(
                  children: [Text("Dr. Imran Syahir"), Text("General Doctor")],
                ),
                Icon(Icons.keyboard_arrow_right_rounded),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.calendar_month),
                Text("Sunday, 12 June"),
                Icon(Icons.watch_later_outlined),
                Text("11:00 - 12:00 AM")
              ],
            ),
          ],
        ),
      );
}
