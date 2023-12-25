import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_event_app/business_logic/bloc/date_filter/date_filter_cubit.dart';
import 'package:sports_event_app/business_logic/repositories/sports_event_repository.dart';
import 'package:sports_event_app/core/service_locator.dart';
import 'package:sports_event_app/data/model/sports_event/sports_event_model.dart';
import 'package:sports_event_app/utils/constants.dart';

part 'sports_event_state.dart';

/// Cubit managing the sports events.
class SportsEventCubit extends Cubit<SportsEventState> {
  /// Initializes the cubit with [SportsEventInitial] state.
  SportsEventCubit() : super(SportsEventInitial());
  final SportsEventRepository _sportsEventRepository =
      getIt<SportsEventRepository>();

  List<SportsEventModel> _allEvents = [];

  /// Fetches the sports events.
  Future<void> fetchEvents() async {
    try {
      emit(SportsEventLoading());
      _allEvents = await _sportsEventRepository.getEvents();
      emit(SportsEventLoaded(_allEvents));
    } catch (e) {
      emit(const SportsEventError(tTextErrorFetchingEvents));
    }
  }

  /// Filters the sports events by date.
  void filterEvents(DateFilter filter) {
    emit(SportsEventLoading());
    final filterDate = _getFilterDate(filter);
    final filteredEvents = _allEvents
        .where(
          (event) =>
              event.dateStarting?.toLowerCase() == filterDate.toLowerCase(),
        )
        .toList();

    emit(SportsEventLoaded(filteredEvents));
  }

  String _getFilterDate(DateFilter filter) {
    switch (filter) {
      case DateFilter.yesterday:
        return 'Yesterday';
      case DateFilter.today:
        return 'Today';
      case DateFilter.tomorrow:
        return 'Tomorrow';
    }
  }
}
