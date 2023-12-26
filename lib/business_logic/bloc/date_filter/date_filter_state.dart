part of 'date_filter_cubit.dart';

/// The base state for the date filter feature.
abstract class DateFilterState extends Equatable {
  /// Constructs a [DateFilterState].
  const DateFilterState();

  @override
  List<Object> get props => [];
}

/// The initial state of the date filter with no date selected.
class DateFilterInitial extends DateFilterState {
  @override
  List<Object> get props => [];
}

/// The state when a specific date filter has been selected.
class DateFilterSelected extends DateFilterState {
  /// Constructs a [DateFilterSelected] state with the given [filter].
  const DateFilterSelected(this.filter);

  /// The selected date filter.
  final DateFilter filter;

  @override
  List<Object> get props => [filter];
}
