import 'package:flutter/material.dart';
import 'package:task11/widgets/app_bar.dart';
import 'package:task11/widgets/my_expansion_panel.dart';

class MyRoomListPage extends StatefulWidget {
  const MyRoomListPage({super.key});

  @override
  State<MyRoomListPage> createState() => _MyRoomListPageState();
}

class _MyRoomListPageState extends State<MyRoomListPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(
          color: Colors.transparent,
        ),
      ),
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: MyAppBar(title: 'Rooms List')),
          body: const MyExpansionPanel(),
          persistentFooterButtons: [
            ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.blue),
                    foregroundColor:
                        MaterialStatePropertyAll<Color>(Colors.white),
                  ),
                  child: const Text(
                    'Next',
                  ),
                )
              ],
            )
          ]),
    );
  }
}
