import 'package:get/get.dart';

import '../data/local/preference/preference_index.dart';

class LocalSourceServices {
  static Future init() async {
    {
      Get.lazyPut<PreferenceManager>(() => PreferenceManagerImpl(),
          tag: (PreferenceManager).toString(), fenix: true);
    }
  }
}
