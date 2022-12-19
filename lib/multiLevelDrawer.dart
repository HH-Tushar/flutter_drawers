import 'package:flutter/material.dart';

class MultiLevelDrawer extends StatelessWidget {
  const MultiLevelDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(children: const [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage:NetworkImage('https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/279581065_1496446704103742_1057215260167650357_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHVD6ihhNsE4dOh_65VmRyXgrHcJ7c8KEqCsdwntzwoSpfb-IvdaKueuqfEE_9cyUoz5GGWpH0KENI9pTK6xK7t&_nc_ohc=HZNI4vNQU6wAX-J3YHX&_nc_oc=AQlBOWpAx7GsZPtX6sdvlQfLuvd1hvOH3_R0cJGH6hgvcUpVT3HgN7L4z4QjTalvBR4&_nc_ht=scontent.fdac24-1.fna&oh=00_AfC70FjmcCWapXzY-6O9k4-UAdF1rsgSXA87AksXIXJhTw&oe=63A5704D'),
          )


        ],),
      ),
    );
  }
}
