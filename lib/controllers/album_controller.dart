import 'package:get/get.dart';
import 'package:ruslan_badaev_site/models/screenshot_album.dart';
import 'package:ruslan_badaev_site/models/testCard.dart';

class AlbumController extends GetxController {
  var _albums = List<ScreenshotAlbum>().obs;
  List<ScreenshotAlbum> get albums => _albums.value;
  getAllAlbums(List<ScreenshotAlbum> newAlbums) {
    _albums.value = newAlbums;
    update();
  }
}
