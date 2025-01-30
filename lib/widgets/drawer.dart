import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildHeader(),
          _buildItem(
            icon: CupertinoIcons.home,
            title: 'Home',
            onTap: () => {},
          ),
          _buildItem(
            icon: CupertinoIcons.bell,
            title: 'Notifications',
            onTap: () => {},
          ),
          _buildItem(
            icon: CupertinoIcons.person,
            title: 'Profile',
            onTap: () => {},
          ),
          _buildItem(
            icon: Icons.settings,
            title: 'Setting',
            onTap: () => {},
          )
        ],
      ),
    );
  }

  _buildHeader() {
    return const DrawerHeader(
      decoration: BoxDecoration(color: Colors.deepOrange),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/jeepCar.png'),
            radius: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Drive Jeep',
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }

  _buildItem(
      {required IconData icon,
      required String title,
      required GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepOrange),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: Colors.black.withOpacity(0.8),
        ),
      ),
      onTap: onTap,
      minLeadingWidth: 5,
    );
  }
}
