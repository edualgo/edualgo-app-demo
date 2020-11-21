import 'package:flutter/material.dart';

class DevPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
      child: Text(
        'Know the Developer',
        style: TextStyle(
          fontFamily: 'Recursive',
          fontSize: 20.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
