import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class drawernavigation extends StatefulWidget {
  const drawernavigation({super.key});

  @override
  State<drawernavigation> createState() => _drawernavigationState();
}

class _drawernavigationState extends State<drawernavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/357574293_569705195365157_1441071768300455704_n.jpg?_nc_cat=104&cb=99be929b-3346023f&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGMooEBZLdImkeXC5C9vnKR72Rors00Ib3vZGiuzTQhvflnUsfyPinYsIfWmV9_1v2a8wX2dkSmrPzkesyZ7aiz&_nc_ohc=Y2aOUaT7o_4AX8oOWYa&_nc_ht=scontent.fdac135-1.fna&oh=00_AfBF9eENYE0axJ2HBnGcfxyRtCRevvgs7CJXjfGB7nO6ww&oe=64D0644D"),
                ),
                accountName: Text("Toufiqur Rahman"),
                accountEmail: Text("toufiq@gmail.com")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            )
          ],
        ),
      ),
    );
  }
}
