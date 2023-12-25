import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'date_filter_state.dart';

/// The date filter options.
// ignore: public_member_api_docs
enum DateFilter { yesterday, today, tomorrow }

/// Cubit managing the date filter.
class DateFilterCubit extends Cubit<DateFilterState> {
  /// Initializes the cubit with [DateFilterInitial] state.
  DateFilterCubit() : super(DateFilterInitial());

  /// Selects the date filter.
  void selectDateFilter(DateFilter filter) {
    emit(DateFilterSelected(filter));
  }
}
