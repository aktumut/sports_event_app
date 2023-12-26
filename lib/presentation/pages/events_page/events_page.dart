import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_event_app/business_logic/bloc/date_filter/date_filter_cubit.dart';
import 'package:sports_event_app/business_logic/bloc/sports_event/sports_event_cubit.dart';
import 'package:sports_event_app/presentation/pages/events_page/events_page_widgets/event_card.dart';
import 'package:sports_event_app/presentation/widgets/custom_app_bar.dart';
import 'package:sports_event_app/presentation/widgets/horizontal_menu.dart';
import 'package:sports_event_app/utils/constants.dart';

/// Main page of the app that displays the events.
class EventsPage extends StatelessWidget {
  /// Constructs a [EventsPage].
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SportsEventCubit>().fetchEvents();
    final sportsEventCubit = context.read<SportsEventCubit>();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            BlocListener<DateFilterCubit, DateFilterState>(
              listener: (BuildContext context, DateFilterState filterState) {
                if (filterState is DateFilterSelected) {
                  sportsEventCubit.filterEvents(filterState.filter);
                }
              },
              child: const HorizontalMenu(),
            ),
            Expanded(
              child: BlocBuilder<SportsEventCubit, SportsEventState>(
                builder: (BuildContext context, SportsEventState eventState) {
                  if (eventState is SportsEventLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (eventState is SportsEventLoaded) {
                    return ListView.builder(
                      key: ValueKey(eventState.events.length),
                      itemCount: eventState.events.length,
                      itemBuilder: (BuildContext context, int index) {
                        final event = eventState.events[index];
                        return EventCard(event: event);
                      },
                    );
                  } else if (eventState is SportsEventError) {
                    return Center(child: Text(eventState.message));
                  }
                  return Center(
                    child: Text(
                      tTextErrorNoEvents,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
