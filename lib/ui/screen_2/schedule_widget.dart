import 'package:doctor_appoitment/data/doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  SchedulePage({super.key});

  List<Doctor> doctors = [
    Doctor(
        name: "Dr. Imran Syahir",
        specialist: "General Doctro",
        workDay: "Sunday, 12 June",
        workTime: "11:00 - 12:00 AM"),
    Doctor(
        name: "Dr.Bessie Colleman",
        specialist: "Dental Specialist",
        workDay: "Sunday, 12 June",
        workTime: "11:00 - 12:00 AM"),
    Doctor(
        name: "Dr.Babe Didrikson",
        specialist: "Dental Specialist",
        workDay: "Sunday, 12 June",
        workTime: "11:00 - 12:00 AM"),
    Doctor(
        name: "Dr.Babe Didrikson",
        specialist: "Dental Specialist",
        workDay: "Sunday, 12 June",
        workTime: "11:00 - 12:00 AM"),
    Doctor(
        name: "Dr.Babe Didrikson",
        specialist: "Dental Specialist",
        workDay: "Sunday, 12 June",
        workTime: "11:00 - 12:00 AM")
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 226,
              child: ElevatedButton(
                onPressed: () => {},
                child: Text("Detail"),
              ),
            ),
            SizedBox(
              width: 226,
              child: ElevatedButton(
                onPressed: () => {},
                child: Text("Detail"),
              ),
            ),
            SizedBox(
              width: 226,
              child: ElevatedButton(
                onPressed: () => {},
                child: Text("Detail"),
              ),
            )
          ],
        ),
      )),
      body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: doctors.length,
              itemBuilder: (context, index) {
                return Column(children: [
                  Card(
                      margin: const EdgeInsets.only(top: 16.0, bottom: 12.0),
                      color: Colors.white,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 20, right: 20, bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Image(
                                      image:
                                          AssetImage('assets/images/dr.png')),
                                  Container(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          doctors[index].name,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(doctors[index].specialist,
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.keyboard_arrow_right_rounded,
                                      color: Colors.grey),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                            width: 287,
                            child: const Divider(
                              thickness: 1,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, left: 20, right: 20, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: Colors.grey,
                                size: 16,
                              ),
                              Text(doctors[index].workDay,
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              const Icon(
                                Icons.watch_later_outlined,
                                color: Colors.grey,
                                size: 16,
                              ),
                              Text(doctors[index].workTime,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12))
                            ],
                          ),
                        ),
                      ])),
                  SizedBox(
                    width: 295,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text("Detail"),
                    ),
                  )
                ]);
                ;
              })));
}
