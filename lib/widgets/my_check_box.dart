import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  var selectedOption;
  Map<String, bool> selectedData = {
    'Breakfast': false,
    'wifi': false,
    'parking': false,
    'pool': false,
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        const Row(
          children: [
             Text(
              'Extras:',
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
        Row(children: [
          myCheckbox('Breakfast'),
          const SizedBox(
            width: 10,
          ),
          const Text('Breakfast (10 USD/Day)')
        ]),
        const SizedBox(
          height: 5,
        ),
        Row(children: [
          myCheckbox('wifi'),
          const SizedBox(
            width: 10,
          ),
          const Text('Internet Wifi (5 USD/Day)')
        ]),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            myCheckbox('parking'),
            const SizedBox(
              width: 10,
            ),
            const Text('Parking (5 USD/Day)')
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            myCheckbox('pool'),
            const SizedBox(
              width: 10,
            ),
            const Text('Swimming Pool (10 USD/Day)')
          ],
        ),
      ]),
    );
  }

  Widget myCheckbox(String selected) {
    return Checkbox(
      value: selectedData[selected],
      activeColor: Colors.blue,
      onChanged: (value) {
        setState(() {
          selectedData[selected] = value!;
        });
      },
    );
  }
}
