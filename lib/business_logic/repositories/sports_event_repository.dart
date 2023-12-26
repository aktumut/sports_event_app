import 'package:flutter/cupertino.dart';
import 'package:sports_event_app/core/service_locator.dart';
import 'package:sports_event_app/data/model/sports_event/sports_event_model.dart';
import 'package:sports_event_app/data/providers/sports_event_provider.dart';
import 'package:sports_event_app/utils/app_images.dart';
import 'package:sports_event_app/utils/constants.dart';

/// [SportsEventRepository] is a class that provides [SportsEventModel] object.
class SportsEventRepository {
  final SportsEventProvider _sportsEventProvider = getIt<SportsEventProvider>();

  /// Function that gets  the [SportsEventModel] objects from data layer.
  Future<List<SportsEventModel>> getEvents() async {
    try {
      return await _sportsEventProvider.fetchEvents();
    } catch (e) {
      debugPrint('Error in repository while fetching events: $e');
      return [
        SportsEventModel(
          iconUrl: AppImages.iconGameNull,
          league: tNullIndependentLeague,
          teams: tTextNullTeams,
          sportType: tTextNullSportType,
          dateStarting: tTextNullDateStarting,
          timeStarting: tTextNullTimeStarting,
          description: tTextNullDescription,
        ),
      ];
    }
  }
}
