import 'package:get/get.dart';
import 'package:login_test/app/data/model/event.dart';
import 'package:login_test/app/route/app_pages.dart';
import 'package:login_test/app/route/navigator.dart';

class EventsController extends GetxController {
  EventsController(this._nav);
  final AppNavigator _nav;
  final List<EventResponse> events = [
    EventResponse.fromJson({
      "id": "1",
      "name": "Outback Eu quero tudo!",
      "imageUrl": "",
      "isFav": false,
      "points": 50.0,
      "date": "2022-01-10"
    }),
    EventResponse.fromJson({
      "id": "2",
      "name": "Expresso por um ano!",
      "imageUrl": "",
      "isFav": false,
      "points": 50.0,
      "date": "2022-01-10"
    }),
    EventResponse.fromJson({
      "id": "2",
      "name": "McFlurry Kit Kat McDonald's",
      "imageUrl": "",
      "isFav": false,
      "points": 50.0,
      "date": "2022-01-10"
    }),
    EventResponse.fromJson({
      "id": "2",
      "name": "Bloomin' Onion Outback",
      "imageUrl": "",
      "isFav": false,
      "points": 50.0,
      "date": "2022-01-10"
    })
  ];

  void goToQRScanner() {
    _nav.to(AppPages.qrScan);
  }
}
