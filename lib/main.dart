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
            SearchDoctorWidget(),
            ThemesIconWidget(),
            const NearDoctorWidget()
          ],
        ),
      ),
    );
  }
}

class ThemesIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 12.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.cloudy_snowing,
                  size: 72,
                ),
                Text("Covid 19")
              ],
            ),
            Column(
              children: [Icon(Icons.person, size: 72), Text("Doctor")],
            ),
            Column(
              children: [
                Icon(Icons.medical_information, size: 72),
                Text("Medicine")
              ],
            ),
            Column(
              children: [
                Icon(Icons.local_hospital, size: 72),
                Text("Hospital")
              ],
            )
          ],
        ),
      );
}

class SearchDoctorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Card(
      margin: EdgeInsets.only(top: 10.0, bottom: 12.0),
      color: Colors.white,
      child: TextField(
          decoration: InputDecoration(
        prefix: Icon(Icons.search),
        hintText: 'Search doctor or health issue',
      )));
}

class NearDoctorWidget extends StatelessWidget {
  const NearDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) => const Card(
      margin: EdgeInsets.only(top: 16.0, bottom: 10.0),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 16),
          child: Column(
            children: [
              Text(
                "Near Doctor",
                style: TextStyle(color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.person),
                      Column(
                        children: [
                          Text(
                            "Dr. Joseph Brostito",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text("Dental Specialist",
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.not_listed_location, color: Colors.white),
                      Text("1.2 KM")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.only(top: 16.0, left: 20, right: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.watch_later_outlined, color: Colors.yellow),
              Text("4.8 (120 Reviews)", style: TextStyle(color: Colors.yellow)),
              Icon(
                Icons.watch_later_outlined,
                color: Colors.blue,
              ),
              Text("Open at 17.00", style: TextStyle(color: Colors.blue))
            ],
          ),
        )
      ]));
}

class CardDoctorWidget extends StatelessWidget {
  const CardDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) => const Card(
      margin: EdgeInsets.only(top: 16.0, bottom: 10.0),
      color: Colors.blue,
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.person),
                  Column(
                    children: [
                      Text(
                        "Dr. Imran Syahir",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text("General Doctor",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.keyboard_arrow_right_rounded, color: Colors.white),
                ],
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.only(top: 16.0, left: 20, right: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.calendar_month, color: Colors.white),
              Text("Sunday, 12 June", style: TextStyle(color: Colors.white)),
              Icon(
                Icons.watch_later_outlined,
                color: Colors.white,
              ),
              Text("11:00 - 12:00 AM", style: TextStyle(color: Colors.white))
            ],
          ),
        )
      ]));
}
