import 'package:get/get.dart';
import 'package:ruslan_badaev_site/models/testCard.dart';

class TestController extends GetxController {
  var _testCards = List<TestCard>().obs;
  List<TestCard> get testCards => _testCards;
  addToCart(TestCard newTestCards) {
    _testCards.add(newTestCards);
  }
}
