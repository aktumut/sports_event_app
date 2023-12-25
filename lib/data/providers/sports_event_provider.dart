import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:sports_event_app/data/model/sports_event/sports_event_model.dart';
import 'package:sports_event_app/utils/app_images.dart';
import 'package:sports_event_app/utils/constants.dart';

/// [SportsEventProvider] is a class that provides data  operations.
class SportsEventProvider {
  /// Function that fetches the [SportsEventModel] objects  from the json file.
  Future<List<SportsEventModel>> fetchEvents() async {
    try {
      final response = await rootBundle.loadString(tPathData);
      final data = json.decode(response) as List<dynamic>;
      return data
          .map<SportsEventModel>(
            (jsonItem) =>
                SportsEventModel.fromJson(jsonItem as Map<String, dynamic>),
          )
          .toList();
    } catch (e) {
      debugPrint('Error loading sports events: $e');
      return [
        SportsEventModel(
          iconUrl: AppImages.iconGameNull,
          league: tNullIndependentLeague,
          teams: tTextNullTeams,
          sportType: tTextNullSportType,
          dateStarting: tTextNullDateStarting,
          timeStarting: tTextNullTimeStarting,
        ),
      ];
    }
  }
}
