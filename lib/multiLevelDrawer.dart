import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:flutter/material.dart';

class Multileveldrawer extends StatelessWidget {
  const Multileveldrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiLevelDrawer(
      backgroundColor: Colors.white,
      rippleColor: Colors.white,
      subMenuBackgroundColor: Colors.grey.shade100,
      divisionColor: Colors.grey,
      header: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/306923622_1594836147598130_8976480224634974980_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeF3PIQkAn72236oLvrhS2JFlDs0CzrKaMGUOzQLOspowWnHKlvUdEbSfDv4goj0LV7kS7-JFP_nlrnmlOrsXCGL&_nc_ohc=IDVsMziSo_sAX-kJNWp&_nc_ht=scontent.fdac24-1.fna&oh=00_AfAqUw-HePonnDk_dOoBVDPZ_vhoq5omjU92dG6rOBtJAQ&oe=63A69B83')),
            SizedBox(height: 10),
            Text("RetroPortal Studio")
          ],
        )),
      ),
      children: [
        MLMenuItem(
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.arrow_right),
            content: const Text("My Profile"),
            subMenuItems: [
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 5")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 6")),
            ],
            onClick: () {}),
        MLMenuItem(
            leading: const Icon(Icons.settings),
            trailing: const Icon(Icons.arrow_right),
            content: const Text("Settings"),
            onClick: () {},
            subMenuItems: [
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2"))
            ]),
        MLMenuItem(
          leading: const Icon(Icons.notifications),
          content: const Text("Notifications"),
          onClick: () {},
        ),
        MLMenuItem(
            leading: const Icon(Icons.payment),
            trailing: const Icon(Icons.arrow_right),
            content: const Text("Payments"),
            subMenuItems: [
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
            ],
            onClick: () {}),
        MLMenuItem(
            leading: const Icon(Icons.payment),
            trailing: const Icon(Icons.arrow_right),
            content: const Text("Payments"),
            subMenuItems: [
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
            ],
            onClick: () {}),
        MLMenuItem(
            leading: const Icon(Icons.payment),
            trailing: const Icon(Icons.arrow_right),
            content: const Text("Payments"),
            subMenuItems: [
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
            ],
            onClick: () {}),
        MLMenuItem(
            leading: const Icon(Icons.payment),
            trailing: const Icon(Icons.arrow_right),
            content: const Text("Setting"),
            subMenuItems: [
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
              MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
            ],
            onClick: () {}),
      ],
    );
  }
}
