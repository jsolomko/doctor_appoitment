import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Card(
              child: Text("data"),
            ),
            Card(
              child: Text("data"),
            ),
            Card(
              child: Text("data"),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Card(
              margin: const EdgeInsets.only(top: 16.0, bottom: 12.0),
              color: Colors.blue,
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
                              image: AssetImage('assets/images/dr.png')),
                          Container(
                            padding: EdgeInsets.only(left: 16),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dr. Imran Syahir",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("General Doctor",
                                    style: TextStyle(
                                      color: Colors.white,
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
                              color: Colors.white),
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
                const Padding(
                  padding: EdgeInsets.only(
                      top: 16.0, left: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                        size: 16,
                      ),
                      Text("Sunday, 12 June",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                      Text("11:00 - 12:00 AM",
                          style: TextStyle(color: Colors.white, fontSize: 12))
                    ],
                  ),
                )
              ])),
          Card(
              margin: const EdgeInsets.only(top: 16.0, bottom: 12.0),
              color: Colors.blue,
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
                              image: AssetImage('assets/images/dr.png')),
                          Container(
                            padding: EdgeInsets.only(left: 16),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dr. Imran Syahir",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("General Doctor",
                                    style: TextStyle(
                                      color: Colors.white,
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
                              color: Colors.white),
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
                const Padding(
                  padding: EdgeInsets.only(
                      top: 16.0, left: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                        size: 16,
                      ),
                      Text("Sunday, 12 June",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                      Text("11:00 - 12:00 AM",
                          style: TextStyle(color: Colors.white, fontSize: 12))
                    ],
                  ),
                )
              ])),
        ],
      ));
}
