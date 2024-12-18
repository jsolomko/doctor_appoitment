import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemesIconWidget extends StatelessWidget {
  const ThemesIconWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(top: 10.0, bottom: 12.0),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Image(image: AssetImage('assets/images/sun.png')),
            Text("Covid 19",style: TextStyle(fontSize: 15,color: Colors.grey),)
          ],
        ),
        Column(
          children: [
            Image(image: AssetImage('assets/images/profile-add.png')),
            Text("Doctor",style: TextStyle(fontSize: 15,color: Colors.grey))
          ],
        ),
        Column(
          children: [
            Image(image: AssetImage('assets/images/link.png')),
            Text("Medicine",style: TextStyle(fontSize: 15,color: Colors.grey))
          ],
        ),
        Column(
          children: [
            Image(image: AssetImage('assets/images/hospital.png')),
            Text("Hospital",style: TextStyle(fontSize: 15,color: Colors.grey))
          ],
        )
      ],
    ),
  );
}