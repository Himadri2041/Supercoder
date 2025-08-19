import 'package:get/get.dart';
import '../controllers/profile_controller.dart';
import '../controllers/campaign_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileController());
    Get.put(CampaignController());
  }
}
