import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var selectedAdults = 0;
  var selectedChildren = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Adults:',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '$selectedAdults',
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                divisions: 100,
                max: 10,
                label: '$selectedAdults',
                value: selectedAdults.toDouble(),
                onChanged: (value) {
                  selectedAdults = value.toInt();
                  setState(() {});
                },
                activeColor: Colors.red,
                inactiveColor: const Color.fromARGB(255, 245, 212, 210),
              )
            ],
          ),
          Row(
            children: [
              const Text(
                'Chiildren:',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '$selectedChildren',
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                divisions: 100,
                max: 10,
                value: selectedChildren.toDouble(),
                label: '$selectedChildren',
                onChanged: (value) {
                  selectedChildren = value.toInt();
                  setState(() {});
                },
                activeColor: Colors.red,
                inactiveColor: const Color.fromARGB(255, 245, 212, 210),
              )
            ],
          ),
        ],
      ),
    );
  }
}
