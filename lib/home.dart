
import 'package:flutter/material.dart';

import 'expendedDrawer.dart';
import 'multiLevelDrawer.dart';
import 'simpleDrawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

enum SingingCharacter { simpleDrawer, expendedDrawer, multilevelDrawer }

class _HomeState extends State<Home> {
  SingingCharacter? _character = SingingCharacter.simpleDrawer;
  int drawernumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer pts"),
      ),
      drawer: ResponsiveLayout(
        simpleDrawer: myDrawer,
        expendedDrawer: const ExpendedDrawer(),
        multileveiDrawer: const MultiLevelDrawer(),
        value: drawernumber,
      ),
      body: Container(
        width: 500,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.4),

        child: Column(
        

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            RadioListTile<SingingCharacter>(
              title: const Text('Simple Drawer'),
              value: SingingCharacter.simpleDrawer,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                  drawernumber = 1;
                  print(_character);
                  print(drawernumber);
                });
              },
            ),

            RadioListTile<SingingCharacter>(
              title: const Text('Expended Drawer'),
              value: SingingCharacter.expendedDrawer,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              tileColor:(_character==SingingCharacter.expendedDrawer)?Colors.black12:Colors.white10,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                  drawernumber = 2;
                  print(_character);
                  print(drawernumber);
                });
              },
            ),

            RadioListTile<SingingCharacter>(
              title: const Text('Multilevel Drawer'),
              activeColor: Colors.green,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              value: SingingCharacter.multilevelDrawer,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                  drawernumber = 3;
                  print(_character);
                  print(drawernumber);
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final  simpleDrawer;
  final Widget expendedDrawer;
  final Widget multileveiDrawer;
  final int value;

  const ResponsiveLayout({
    super.key,
    required this.simpleDrawer,
    required this.expendedDrawer,
    required this.multileveiDrawer,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (value == 1) {
          print(value);
          return simpleDrawer;
        } else if (value == 2) {
          print(value);
          return expendedDrawer;
        } else {
          return multileveiDrawer;
        }
      },
    );
  }
}
