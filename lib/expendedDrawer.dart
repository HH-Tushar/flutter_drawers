import 'package:flutter/material.dart';

class ExpendedDrawer extends StatelessWidget {
  const ExpendedDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      elevation: 0,
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //CircleAvatar(),
            // child: Text('List of Batch and About us'),
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 64,
              ),
            ),
            ExpansionTile(
              leading: const Icon(Icons.adb),
              //trailing: const Icon(Icons.arrow_downward_outlined ),
              title: const Text(
                'P R O F I L E',
                textAlign: TextAlign.center,
              ),
              children: [
                Column(
                  children: const [
                    SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      buttonName: "UPDATE DP",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      buttonName: "ADD BIO",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      buttonName: "DELETE",
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 8),
            ExpansionTile(
              leading: const Icon(Icons.adb),
              //trailing: const Icon(Icons.arrow_downward_outlined ),
              title: const Text(
                'W O R K F L O W',
                textAlign: TextAlign.center,
              ),
              children: [
                Column(
                  children: const [
                    SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      buttonName: "Option 1",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      buttonName: "Option 2",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      buttonName: "Option 3",
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 8),
            ExpansionTile(
              leading: const Icon(Icons.adb),
              //trailing: const Icon(Icons.arrow_downward_outlined ),
              title: const Text(
                'S E T T I N G',
                textAlign: TextAlign.center,
              ),
              children: [
                Column(
                  children: const [
                    SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      buttonName: "Option 1",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      buttonName: "Option 2",
                    ),
                  ],
                )
              ],
            ),

            const SizedBox(height: 8),
            const CustomButton(
              buttonName: " D E V E L O P E R S",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String buttonName;
  const CustomButton({Key? key, required this.buttonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey,
        minimumSize: const Size(500, 50),
        maximumSize: const Size(500, 50),
      ),
      child: Text(buttonName),
    );
  }
}
