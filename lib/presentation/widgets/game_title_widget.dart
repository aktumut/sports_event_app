import 'package:flutter/material.dart';
import 'package:sports_event_app/data/model/sports_event/sports_event_model.dart';
import 'package:sports_event_app/utils/build_context_ext.dart';
import 'package:sports_event_app/utils/constants.dart';
import 'package:text_scroll/text_scroll.dart';

/// [GameTitleWidget] is a widget that displays the title of a game.
class GameTitleWidget extends StatelessWidget {
  /// Constructs a [GameTitleWidget].
  const GameTitleWidget({
    required this.event,
    this.isDetailPage = false,
    super.key,
  });

  ///  [SportsEventModel] that contains the information of the event.
  final SportsEventModel event;

  /// A boolean that indicates whether the widget is used in the detail page.
  final bool isDetailPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isDetailPage ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${event.dateStarting} | ${event.timeStarting}',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(
          width:
              isDetailPage ? null : context.screenWidth - tWidthFilledEventCard,
          child: TextScroll(
            '${event.teams}',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ],
    );
  }
}
