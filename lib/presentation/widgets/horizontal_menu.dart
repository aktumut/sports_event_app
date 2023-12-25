import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_event_app/business_logic/bloc/date_filter/date_filter_cubit.dart';
import 'package:sports_event_app/utils/colors.dart';
import 'package:sports_event_app/utils/constants.dart';

///  A horizontal menu for filtering the events
class HorizontalMenu extends StatelessWidget {
  /// Constructs a [HorizontalMenu].
  const HorizontalMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final dateFilterCubit = context.read<DateFilterCubit>();

    return BlocBuilder<DateFilterCubit, DateFilterState>(
      builder: (BuildContext context, DateFilterState state) {
        final selectedFilter =
            state is DateFilterSelected ? state.filter : null;

        return Container(
          height: tHeightHorizontalMenu,
          width: double.infinity,
          color: tColorBackgroundGrey,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisAlignment: MainAxisAlignment.center,
            children: DateFilter.values.map((dateFilter) {
              final isSelected = dateFilter == selectedFilter;
              return menuFilterItem(
                context: context,
                dateFilter: dateFilter,
                isSelected: isSelected,
                onTap: () => dateFilterCubit.selectDateFilter(dateFilter),
              );
            }).toList(),
          ),
        );
      },
    );
  }

  /// Returns menu filter item
  Widget menuFilterItem({
    required BuildContext context,
    required DateFilter dateFilter,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final text = dateFilter.name.toUpperCase();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: tHeightHorizontalMenu,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(
          horizontal: tSpaceHorizontalPadding,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? tColorBlue : Colors.transparent,
              width: tSpaceHalf,
            ),
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: isSelected ? tColorBlue : tColorFontTitleDarkGrey,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
