import 'package:flutter/material.dart';
import 'package:sports_event_app/data/model/sports_event/sports_event_model.dart';
import 'package:sports_event_app/presentation/widgets/event_card_info.dart';
import 'package:sports_event_app/utils/colors.dart';
import 'package:sports_event_app/utils/constants.dart';

/// [EventCard] is a widget that displays the card of an event.
class EventCard extends StatelessWidget {
  /// Constructs a [EventCard].
  const EventCard({
    required this.event,
    super.key,
  });

  ///  [SportsEventModel] that contains the information of the event.
  final SportsEventModel event;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EventCardInfo(
          event: event,
        ),
        const Divider(
          color: tColorDivider,
          thickness: tSpaceEighth,
          indent: tSpaceHorizontalPadding,
          endIndent: tSpaceHorizontalPadding,
        ),
      ],
    );
  }
}
