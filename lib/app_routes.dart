import 'package:get/get.dart';
import 'package:supercoder/splash_page.dart';
import 'views/home/home_page.dart';
import 'views/campaign/campaign_matching_page.dart';
import 'views/profile/my_info_page.dart';
import 'views/profile/basic_info_page.dart';
import 'views/profile/password_settings_page.dart';

class Routes {
  static const HOME = '/home';
  static const CAMPAIGN = '/campaign';
  static const MY_INFO = '/my_info';
  static const BASIC_INFO = '/basic_info';
  static const PASSWORD = '/password';
  static const SPLASH = '/splash';
}

class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => SplashPage()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(name: Routes.CAMPAIGN, page: () => CampaignMatchingPage()),
    GetPage(name: Routes.MY_INFO, page: () => MyInfoPage()),
    GetPage(name: Routes.BASIC_INFO, page: () => BasicInfoPage()),
    GetPage(name: Routes.PASSWORD, page: () => PasswordSettingsPage()),
  ];
}
