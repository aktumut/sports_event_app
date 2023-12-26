import 'package:flutter/material.dart';
import 'package:sports_event_app/data/model/sports_event/sports_event_model.dart';
import 'package:sports_event_app/utils/colors.dart';
import 'package:sports_event_app/utils/constants.dart';

/// [LeagueAvatarWidget] is a widget that displays the avatar with league.
class LeagueAvatarWidget extends StatelessWidget {
  /// Constructs a [LeagueAvatarWidget].
  const LeagueAvatarWidget({
    required this.event,
    super.key,
  });

  ///  [SportsEventModel] that contains the information of the event.
  final SportsEventModel event;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: tRadiusAvatarEventCard,
      backgroundColor: tColorLightBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tTextLeague,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: tColorBlack,
                ),
          ),
          const SizedBox(
            height: tSpaceQuarter,
          ),
          Text(
            '${event.league}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
