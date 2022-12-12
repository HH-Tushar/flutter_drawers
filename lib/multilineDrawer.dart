
import 'package:flutter/material.dart';


// ignore: camel_case_types
class MultilineDrawer extends StatelessWidget {
  const MultilineDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey.shade600,
      child: SafeArea(
        child: ListView(
          children: [
            // child: Text('List of Batch and About us'),

            ExpansionTile(
              trailing: const Icon(Icons.group_sharp),
              title: const Text(
                'Batch',
                textAlign: TextAlign.center,
              ),
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(500, 50),
                        maximumSize: const Size(500, 50),
                      ),
                      onPressed: () {},
                      child: const Text('Batch 52'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(500, 50),
                        maximumSize: const Size(500, 50),
                      ),
                      onPressed: () {},
                      child: const Text('Batch 53'),
                    ),
                  ],
                )
              ],
            ),
            ExpansionTile(
              trailing: const Icon(Icons.class_),
              title: const Text(
                'Result',
                textAlign: TextAlign.center,
              ),
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(500, 50),
                        maximumSize: const Size(500, 50),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const MyWebView()),
                        // );
                      },
                      child: const Text('OrboundCityUniversity'),
                    ),
                  ],
                )
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(500, 50),
                maximumSize: const Size(500, 50),
              ),
              onPressed: () {},
              child: const Text('Devloper Info'),
            )
          ],
        ),
      ),
    );
  }
}