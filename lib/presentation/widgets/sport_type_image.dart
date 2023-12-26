import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sports_event_app/data/model/sports_event/sports_event_model.dart';
import 'package:sports_event_app/utils/constants.dart';

/// A custom widget for displaying the sport type image.
class SportTypeImage extends StatelessWidget {
  /// Constructs a [SportTypeImage].
  const SportTypeImage({
    required this.event,
    super.key,
  });

  ///  [SportsEventModel] that contains the information of the event.
  final SportsEventModel event;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      event.iconUrl!,
      height: tHeightEventCardImage,
      width: tWidthEventCardImage,
    );
  }
}
