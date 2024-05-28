import 'package:flutter/material.dart';

class MyShowDate extends StatefulWidget {
  const MyShowDate({super.key});

  @override
  State<MyShowDate> createState() => _MyShowDateState();
}

class _MyShowDateState extends State<MyShowDate> {
  DateTime selectedDateIn = DateTime.now();
  DateTime selectedDateOut = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Check-in-Date:',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '${selectedDateIn.year} : ${selectedDateIn.month} : ${selectedDateIn.day}',
                style: const TextStyle(color: Colors.red),
              ),
              IconButton(
                onPressed: () async {
                  var date = await showDatePicker(
                    context: context,
                    initialDate: selectedDateIn,
                    firstDate: DateTime(2024),
                    lastDate: DateTime(2027),
                  );
                  if (date != null) {
                    selectedDateIn = date;
                  }
                  setState(() {});
                },
                icon: const Icon(Icons.calendar_month),
                color: Colors.blue,
              )
            ],
          ),
          Row(
            children: [
              const Text(
                'Check-out-Date:',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                  '${selectedDateOut.year} : ${selectedDateOut.month} : ${selectedDateOut.day}',
                  style: const TextStyle(color: Colors.red)),
              IconButton(
                onPressed: () async {
                  var date = await showDatePicker(
                    context: context,
                    initialDate: selectedDateOut,
                    firstDate: DateTime(2024),
                    lastDate: DateTime(2027),
                  );
                  if (date != null) {
                    selectedDateOut = date;
                  }
                  setState(() {});
                },
                icon: const Icon(Icons.calendar_month),
                color: Colors.blue,
              )
            ],
          ),
        ],
      ),
    );
  }
}
