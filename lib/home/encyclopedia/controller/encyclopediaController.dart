import 'package:ffbe/domain/ffbeDomain.dart';
import 'package:ffbe/home/encyclopedia/model/encyclopediaViewPatam.dart';
import 'package:ffbe/home/encyclopedia/model/tuneSetting.dart';
import 'package:get/get.dart';

class EncyclopediaController extends GetxController {
  final _ffbeDomain = FFBEDomain();

  var tuneSetting = TuneSetting();
  var itemList = List<EncyclopediaViewParam>.empty().obs;

  @override
  void onInit() {
    getEncyclopedia();
    super.onInit();
  }

  void getEncyclopedia() async {
    var results = await _ffbeDomain.getMateria();
    itemList.value = results;
  }

  void updateSetting(tuneSetting) {
    this.tuneSetting = tuneSetting;
  }
}
