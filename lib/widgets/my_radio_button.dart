import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'View:',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          myRadioButton('city', 'City View'),
          const SizedBox(
            height: 5,
          ),
          myRadioButton('sea', 'Sea View'),
        ],
      ),
    );
  }

  Widget myRadioButton(String option, String title) {
    return RadioListTile(
      value: option,
      groupValue: selectedValue,
      title: Text(title),
      onChanged: (value) {
        setState(() {
          selectedValue = value!;
        });
      },
    );
  }
}
