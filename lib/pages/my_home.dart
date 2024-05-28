import 'package:flutter/material.dart';

import 'package:task11/widgets/app_bar.dart';
import 'package:task11/widgets/my_check_box.dart';
import 'package:task11/widgets/my_elevated_button.dart';

import 'package:task11/widgets/my_radio_button.dart';

import 'package:task11/widgets/my_slider.dart';
import 'package:task11/widgets/show_date.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: MyAppBar(
            title: 'Andriod ATC Hotel',
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/hotel.jpg',
                fit: BoxFit.cover,
              ),
              const MyShowDate(),
              const MySlider(),
              const MyCheckBox(),
              const MyRadioButton(),
              const MyElevatedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
