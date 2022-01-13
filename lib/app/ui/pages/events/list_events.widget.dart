import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_test/app/ui/pages/events/event_card_widget.dart';
import 'package:login_test/app/ui/pages/events/events_controller.dart';

class ListEventsWidget extends GetView<EventsController> {
  ListEventsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GridView.count(
      crossAxisCount: 2,
      children: List.generate(
          controller.events.length,
          (index) => SizedBox(
              child: EventCardWidget(
                  title: controller.events[index].name,
                  imageUrl: controller.events[index].imageUrl,
                  points: controller.events[index].points,
                  date: controller.events[index].date,
                  isFav: controller.events[index].isFav))),
    ));
  }
}
