import 'package:chi_trucking_app_factory/factory_view_pages/dashboard_page/dashboard_pages_vu.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/setting_page/setting_page_vu.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class DashboardPageVM extends BaseViewModel {
  moveToSetting() {
    Get.to(SettingPageVU());
    notifyListeners();
  }

  moveToDasboard() {
    Get.to(DashboardPageVU());
    notifyListeners();
  }
}
