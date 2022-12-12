import 'package:flutter/material.dart';

import 'multilineDrawer.dart';
import 'simpleDrawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<bool> _isSelected = [false, true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer pts"),
      ),

      //drawer: myDrawer,
      drawer: const MultilineDrawer(),

      body: Center(
        child: ToggleButtons(
          isSelected: _isSelected,
          onPressed: (int index) {
            setState(() {
              _isSelected[index] =! _isSelected[index];
            });
          },
          // region example 1
          color: Colors.grey,
          selectedColor: Colors.red,
          fillColor: Colors.lightBlueAccent,
          // endregion
          // region example 2
          borderColor: Colors.lightBlueAccent,
          selectedBorderColor: Colors.red,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          children: const <Widget>[
            Icon(Icons.bluetooth),
            Icon(Icons.wifi),
            Icon(Icons.flash_on),
          ],
          // endregion
        ),
      ),
    );
  }
}
