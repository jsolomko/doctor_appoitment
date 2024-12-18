import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchDoctorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Card(
      margin: EdgeInsets.only(top: 10.0, bottom: 12.0),
      color: Colors.white,
      child: TextField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(16),
              prefixIcon: Icon(Icons.search, size: 24),
              hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
              hintText: 'Search doctor or health issue',
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
              focusedBorder: InputBorder.none)));
}
