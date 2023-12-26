import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sports_event_app/utils/app_images.dart';
import 'package:sports_event_app/utils/constants.dart';

/// A custom widget for displaying the "Go Back" button.
class GoBackWidget extends StatelessWidget {
  /// Constructs a [GoBackWidget].
  const GoBackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: tSpaceBase,
          horizontal: tSpaceHorizontalPadding,
        ),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            SvgPicture.asset(
              AppImages.iconArrow,
              height: tHeightIconArrow,
              width: tWidthIconArrow,
            ),
            const SizedBox(
              width: tSpaceBase,
            ),
            Text(
              tTextGoBack,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }
}
