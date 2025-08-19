import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/campaign_controller.dart';

class CampaignMatchingPage extends StatelessWidget {
  final CampaignController campC = Get.find();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(180),
          child: AppBar(
            centerTitle: false,
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Campaign",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Matching",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            bottom: TabBar(
              labelColor: Colors.deepPurple,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.deepPurple,
              tabs: const [
                Tab(text: "Applied"),
                Tab(text: "In Progress"),
                Tab(text: "Completed"),
              ],
            ),
          ),
        ),

        body: TabBarView(
          children: [
            _buildCampaignList(campC.applied),
            _buildCampaignList(campC.inProgress),
            _buildCampaignList(campC.completed),
          ],
        ),
      ),
    );
  }

  Widget _buildCampaignList(List campaigns) {
    if (campaigns.isEmpty) {
      return Center(child: Text("No campaigns available."));
    }

    return ListView.builder(
      padding: EdgeInsets.all(12),
      itemCount: campaigns.length,
      itemBuilder: (context, index) {
        final campaign = campaigns[index];
        return Card(
          color: Colors.white,
          margin: EdgeInsets.only(bottom: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              // Left image filling full height
              Container(
                width: 110,
                height: 110,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    16,
                  ), // adjust radius as needed
                  child: Image.network(
                    campaign.imageUrl.isNotEmpty
                        ? campaign.imageUrl
                        : "https://via.placeholder.com/150",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Right content
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        campaign.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 6),
                      Text(
                        campaign.preview,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 13, color: Colors.black87),
                      ),
                      SizedBox(height: 8),
                      Wrap(
                        spacing: 6,
                        runSpacing: -8,
                        children:
                            campaign.tags
                                .map<Widget>(
                                  (tag) => Chip(
                                    label: Text(
                                      tag,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                    backgroundColor: Colors.deepPurple.shade50,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6,
                                    ),
                                  ),
                                )
                                .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
