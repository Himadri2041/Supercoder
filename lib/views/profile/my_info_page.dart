import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120), // taller AppBar
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false, // remove default back arrow
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Custom "back" area
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 12.0),
                      child: Icon(Icons.chevron_left),
                    ),
                  ),

                  // Big Title
                  Text(
                    "My Info",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildMenuItem("Basic Information", () => Get.toNamed('/basic_info')),
          _buildMenuItem("Password Settings", () => Get.toNamed('/password')),
          _buildMenuItem("Preferred Categories", () {}),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: onTap,
        ),
        Divider(height: 1, thickness: 1),
      ],
    );
  }
}
