import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NearDoctorWidget extends StatelessWidget {
  const NearDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Card(
              margin: const EdgeInsets.only(top: 16.0, bottom: 10.0),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 20, right: 20, bottom: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Image(
                                  image:
                                      AssetImage('assets/images/doctor_2.png')),
                              Container(
                                padding: const EdgeInsets.only(left: 16),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dr. Imran Syahir",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("General Doctor",
                                        style: TextStyle(color: Colors.grey))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.not_listed_location,
                                  color: Colors.white),
                              Text(
                                "1.2 KM",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.only(
                      top: 16.0, left: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Color.fromARGB(255, 216, 141, 28),
                        size: 20,
                      ),
                      Text("4.8 (120 Reviews)",
                          style: TextStyle(
                              color: Color.fromARGB(255, 216, 141, 28),
                              fontSize: 12)),
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.blue,
                        size: 20,
                      ),
                      Text("Open at 17.00",
                          style: TextStyle(color: Colors.blue, fontSize: 12))
                    ],
                  ),
                )
              ])),
          Card(
              margin: const EdgeInsets.only(top: 16.0, bottom: 10.0),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 20, right: 20, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Image(
                                  image: AssetImage('assets/images/dr.png')),
                              Container(
                                padding: EdgeInsets.only(left: 16),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dr. Joseph Brostito",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Dental Specialist",
                                        style: TextStyle(color: Colors.grey))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.not_listed_location,
                                  color: Colors.white),
                              Text(
                                "1.2 KM",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.only(
                      top: 16.0, left: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Color.fromARGB(255, 216, 141, 28),
                        size: 20,
                      ),
                      Text("4.8 (120 Reviews)",
                          style: TextStyle(
                              color: Color.fromARGB(255, 216, 141, 28),
                              fontSize: 12)),
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.blue,
                        size: 20,
                      ),
                      Text("Open at 17.00",
                          style: TextStyle(color: Colors.blue, fontSize: 12))
                    ],
                  ),
                )
              ])),
        ],
      );
}
