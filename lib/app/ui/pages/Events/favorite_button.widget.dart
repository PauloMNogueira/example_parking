import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:login_test/app/ui/pages/Events/events_controller.dart';

class FavoriteButtonWidget extends GetView<EventsController> {
  final bool isFav;
  final String id;
  const FavoriteButtonWidget({Key? key, required this.isFav, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => {},
        icon: Icon(
          !isFav ? Icons.favorite_outline : Icons.favorite_outlined,
          color: Colors.blue.shade300,
        ));
  }
}
