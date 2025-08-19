import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/campaign_controller.dart';

class HomePage extends StatelessWidget {
  final CampaignController campC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Hello_User",
          style: TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt_outlined),
            onPressed: () {
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Campaign status card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatusColumn("Applied", campC.applied.length),
                    _buildStatusColumn("In Progress", campC.inProgress.length),
                    _buildStatusColumn("Completed", campC.completed.length),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Menu items with divider
            _buildMenuItem("My Campaigns", () => Get.toNamed('/campaign')),
            _buildMenuItem("My Info", () => Get.toNamed('/my_info')),
            _buildMenuItem("Notices", () {}),
            _buildMenuItem("Contact Us", () {}),
            _buildMenuItem("FAQ", () {}),
            _buildMenuItem("Terms & Policies", () {}),
            _buildMenuItem("Log out", () {}),

            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusColumn(String title, int count) {
    return Column(
      children: [
        Text(
          "$count",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 6),
        Text(title, style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _buildMenuItem(String title, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          title: Text(title,style:TextStyle(fontWeight: FontWeight.w600)),
          trailing: Icon(Icons.chevron_right),
          onTap: onTap,
        ),
        Divider(height: 1, thickness: 1),
      ],
    );
  }
}
