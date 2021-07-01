import 'package:get/get.dart';
import 'package:ruslan_badaev_site/models/screenshot_album.dart';
import 'package:ruslan_badaev_site/models/testCard.dart';
import 'package:ruslan_badaev_site/services/api_service.dart';

class AlbumController extends GetxController {
  var _albums = List<ScreenshotAlbum>().obs;
  var _currentAlbumId = 0.obs;
  List<ScreenshotAlbum> get albums => _albums.value;
  int get currentAlbumId => _currentAlbumId.value;

  @override
  void onInit() {
    super.onInit();
    getAllAlbums(ApiService().getAllItems());
  }

  void getAllAlbums(List<ScreenshotAlbum> newAlbums) {
    _albums.value = newAlbums;
    update();
  }

  void setCurrentAlbumId(int id) {
    _currentAlbumId.value = id;
    update();
  }
}
