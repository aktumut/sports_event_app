import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sports_event_app/utils/app_images.dart';
import 'package:sports_event_app/utils/constants.dart';

///  [LogoWidget] is a widget that displays the logo of the app.
class LogoWidget extends StatelessWidget {
  /// Constructs a [LogoWidget].
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: tSpace,
      ),
      child: SvgPicture.asset(
        AppImages.logo,
        fit: BoxFit.cover,
        width: tWidthAppBarLogo,
        height: tHeightAppBarLogo,
      ),
    );
  }
}
