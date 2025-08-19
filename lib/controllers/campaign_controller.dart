import 'package:get/get.dart';

class CampaignItem {
  final String title;
  final String preview;
  final String imageUrl;
  final List<String> tags;

  CampaignItem({
    required this.title,
    required this.preview,
    required this.imageUrl,
    required this.tags,
  });
}

class CampaignController extends GetxController {
  var applied = <CampaignItem>[].obs;
  var inProgress = <CampaignItem>[].obs;
  var completed = <CampaignItem>[].obs;

  @override
  void onInit() {
    super.onInit();

    applied.addAll([
      CampaignItem(
        title: 'Company Outing',
        preview: 'A promotional trip with the company...',
        imageUrl: 'https://picsum.photos/200/300?random=1',
        tags: ['Travel', 'Teamwork'],
      ),
      CampaignItem(
        title: 'Food Review',
        preview: 'Try and review new menu items.',
        imageUrl: 'https://picsum.photos/200/300?random=2',
        tags: ['Food', 'Review'],
      ),
    ]);

    inProgress.addAll([
      CampaignItem(
        title: 'Tech Gadget Promotion',
        preview: 'Test and promote the latest gadgets.',
        imageUrl: 'https://picsum.photos/200/300?random=3',
        tags: ['Technology', 'Gadgets'],
      ),
    ]);

    completed.addAll([
      CampaignItem(
        title: 'Fitness Challenge',
        preview: 'Participated in a 30-day fitness campaign.',
        imageUrl: 'https://picsum.photos/200/300?random=4',
        tags: ['Fitness', 'Health'],
      ),
    ]);
  }
}
