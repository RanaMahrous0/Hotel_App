import 'package:flutter/material.dart';
import 'package:task11/pages/room_list_page.dart';

class MyElevatedButton extends StatefulWidget {
  const MyElevatedButton({super.key});

  @override
  State<MyElevatedButton> createState() => _MyElevatedButtonState();
}

class _MyElevatedButtonState extends State<MyElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyRoomListPage()));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
          foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
        ),
        child: const Text('Room List'));
  }
}
