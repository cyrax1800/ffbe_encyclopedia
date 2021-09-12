import 'package:ffbe/domain/ffbeDomain.dart';
import 'package:ffbe/home/encyclopedia/model/encyclopediaViewPatam.dart';
import 'package:ffbe/home/encyclopedia/model/tuneSetting.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart' as RxDart;

class EncyclopediaController extends GetxController {
  final _ffbeDomain = FFBEDomain();

  var tuneSetting = TuneSetting();
  var itemList = List<EncyclopediaViewParam>.empty().obs;
  var keyword = "";

  @override
  void onInit() {
    getEncyclopedia();
    super.onInit();
  }

  void getEncyclopedia() {
    RxDart.Rx.zip<List<EncyclopediaViewParam>, List<EncyclopediaViewParam>>(
        [_ffbeDomain.getEquipment(keyword).asStream(), _ffbeDomain.getMateria(keyword).asStream()],
        (values) => values.first + values.last).listen((event) {
      itemList.value = event;
    });
  }

  void updateSetting(tuneSetting) {
    this.tuneSetting = tuneSetting;
  }

  void updateKeyword(newKeyword) {
    this.keyword = newKeyword;
    getEncyclopedia();
  }
}
