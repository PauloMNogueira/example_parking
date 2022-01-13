import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:login_test/app/ui/pages/Events/favorite_button.widget.dart';

class EventCardWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double points;
  final DateTime date;
  final bool isFav;
  final String id;
  const EventCardWidget({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.points,
    required this.date,
    required this.isFav,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 14, bottom: 20, top: 20, right: 14),
      elevation: 5,
      child: Column(
        children: [
          FavoriteButtonWidget(isFav: isFav, id: id),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
          EventRow(
            date: date,
            points: points,
          )
        ],
      ),
    );
  }
}

class EventRow extends StatelessWidget {
  final double points;
  final DateTime date;

  const EventRow({Key? key, required this.points, required this.date})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8, left: 0),
              child: Icon(
                Icons.airplane_ticket_outlined,
                color: Colors.blue,
                size: 15,
              ),
            ),
            Text(
              points.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            const Text(
              "pontos por cupom",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.calendar_today,
                color: Colors.blue,
                size: 15,
              ),
            ),
            const Text("Sorteio em", style: TextStyle(fontSize: 12)),
            Text(
              DateFormat("dd/MM/yyyy").format(date),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            )
          ],
        ),
      ],
    );
  }
}
