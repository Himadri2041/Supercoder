import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileController extends GetxController {
  final storage = GetStorage();

  var userName = 'User'.obs;
  var id = ''.obs;
  var email = ''.obs;
  var phone = ''.obs;
  var nickname = ''.obs;
  var instagram = ''.obs;
  var portfolioLink = ''.obs;
  var portfolioFileName = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void saveBasicInfo() {
    storage.write('userName', userName.value);
    storage.write('id', id.value);
    storage.write('email', email.value);
    storage.write('phone', phone.value);
    storage.write('nickname', nickname.value);
    storage.write('instagram', instagram.value);
    storage.write('portfolioLink', portfolioLink.value);
    storage.write('portfolioFileName', portfolioFileName.value);

    Get.snackbar('Saved', 'Basic information saved');
  }
}
