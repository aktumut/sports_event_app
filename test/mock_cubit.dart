import 'package:bloc_test/bloc_test.dart';
import 'package:sports_event_app/business_logic/bloc/date_filter/date_filter_cubit.dart';
import 'package:sports_event_app/business_logic/bloc/sports_event/sports_event_cubit.dart';

class MockDateFilterCubit extends MockCubit<DateFilterState>
    implements DateFilterCubit {}

class MockSportsEventCubit extends MockCubit<SportsEventState>
    implements SportsEventCubit {}
