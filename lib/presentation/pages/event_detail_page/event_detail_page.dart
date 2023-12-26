import 'package:flutter/material.dart';
import 'package:sports_event_app/data/model/sports_event/sports_event_model.dart';
import 'package:sports_event_app/presentation/pages/event_detail_page/event_detail_page_widgets/event_detail_title_widget.dart';
import 'package:sports_event_app/presentation/pages/event_detail_page/event_detail_page_widgets/go_back_widget.dart';
import 'package:sports_event_app/presentation/widgets/custom_app_bar.dart';
import 'package:sports_event_app/presentation/widgets/horizontal_menu.dart';
import 'package:sports_event_app/presentation/widgets/sport_type_image.dart';
import 'package:sports_event_app/utils/constants.dart';

/// A page for displaying the details of an event.
class EventDetailPage extends StatelessWidget {
  /// Constructs a [EventDetailPage].
  const EventDetailPage({
    required this.event,
    super.key,
  });

  ///  [SportsEventModel] that contains the information of the event.
  final SportsEventModel event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              const HorizontalMenu(),
              const GoBackWidget(),
              EventDetailTitleWidget(event: event),
              const SizedBox(
                height: tSpaceFourfold,
              ),
              SportTypeImage(event: event),
              const SizedBox(
                height: tSpaceVerticalPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: tSpaceHorizontalPadding,
                ),
                child: Text(
                  event.description!,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                height: tHeightEventDetailPageBottomBlank,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
