import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sports_event_app/data/model/sports_event/sports_event_model.dart';
import 'package:sports_event_app/presentation/widgets/game_title_widget.dart';
import 'package:sports_event_app/presentation/widgets/league_avatar_widget.dart';
import 'package:sports_event_app/utils/constants.dart';

/// [EventCardInfo] is a widget that displays the information of an event.
class EventCardInfo extends StatelessWidget {
  /// Constructs a [EventCardInfo].
  const EventCardInfo({
    required this.event,
    super.key,
  });

  ///  [SportsEventModel] that contains the information of the event.
  final SportsEventModel event;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tHeightEventCard,
      width: double.infinity,
      // color: tColorLightBlue,
      padding: const EdgeInsets.symmetric(
        horizontal: tSpaceHorizontalPadding,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            event.iconUrl!,
            height: tHeightEventCardImage,
            width: tWidthEventCardImage,
          ),
          const SizedBox(
            width: tSpaceHorizontalPadding,
          ),
          GameTitleWidget(event: event),
          Expanded(child: Container()),
          LeagueAvatarWidget(event: event),
        ],
      ),
    );
  }
}
