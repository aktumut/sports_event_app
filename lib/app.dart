import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_event_app/business_logic/bloc/date_filter/date_filter_cubit.dart';
import 'package:sports_event_app/business_logic/bloc/sports_event/sports_event_cubit.dart';
import 'package:sports_event_app/presentation/pages/events_page.dart';
import 'package:sports_event_app/utils/theme.dart';

/// The root widget of the app.
class SportsEventApp extends StatelessWidget {
  /// Constructs a [SportsEventApp].
  const SportsEventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => DateFilterCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => SportsEventCubit(),
        ),
      ],
      child: MaterialApp(
        theme: SportsEventAppTheme.themeData,
        debugShowCheckedModeBanner: false,
        home: EventsPage(),
      ),
    );
  }
}
