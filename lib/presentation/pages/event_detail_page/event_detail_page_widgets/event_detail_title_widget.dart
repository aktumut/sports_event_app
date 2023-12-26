import 'package:flutter/material.dart';
import 'package:sports_event_app/data/model/sports_event/sports_event_model.dart';
import 'package:sports_event_app/presentation/widgets/game_title_widget.dart';
import 'package:sports_event_app/presentation/widgets/league_avatar_widget.dart';
import 'package:sports_event_app/utils/constants.dart';

/// [EventDetailTitleWidget] is a widget that displays the title of an event
/// that is displayed on the event detail page.
class EventDetailTitleWidget extends StatelessWidget {
  /// Constructs a [EventDetailTitleWidget].
  const EventDetailTitleWidget({
    required this.event,
    super.key,
  });

  /// [SportsEventModel] that contains the information of the event.
  final SportsEventModel event;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tHeightEventDetailPageHeader,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: tSpaceHorizontalPadding,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          LeagueAvatarWidget(
            event: event,
          ),
          const SizedBox(
            height: tSpaceVerticalPadding,
          ),
          GameTitleWidget(
            event: event,
            isDetailPage: true,
          ),
          const SizedBox(
            height: tSpaceDouble,
          ),
        ],
      ),
    );
  }
}
