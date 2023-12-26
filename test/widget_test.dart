import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sports_event_app/business_logic/bloc/date_filter/date_filter_cubit.dart';
import 'package:sports_event_app/business_logic/bloc/sports_event/sports_event_cubit.dart';
import 'package:sports_event_app/presentation/pages/events_page.dart';

import 'mock_cubit.dart';

void main() {
  group('EventsPage Tests', () {
    late MockSportsEventCubit mockSportsEventCubit;
    late MockDateFilterCubit mockDateFilterCubit;

    setUp(() {
      mockSportsEventCubit = MockSportsEventCubit();
      mockDateFilterCubit = MockDateFilterCubit();
      when(mockSportsEventCubit.fetchEvents).thenAnswer((_) async {});
      when(() => mockSportsEventCubit.state).thenReturn(SportsEventLoading());
      when(() => mockDateFilterCubit.state).thenReturn(DateFilterInitial());
    });

    testWidgets('shows loading indicator when state is SportsEventLoading',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiBlocProvider(
            providers: [
              BlocProvider<SportsEventCubit>(
                create: (context) => mockSportsEventCubit,
              ),
              BlocProvider<DateFilterCubit>(
                create: (BuildContext context) => mockDateFilterCubit,
              ),
            ],
            child: const EventsPage(),
          ),
        ),
      );

      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
