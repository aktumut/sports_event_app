import 'package:flutter/material.dart';
import 'package:sports_event_app/presentation/widgets/logo_widget.dart';
import 'package:sports_event_app/utils/constants.dart';

/// A custom app bar widget.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Constructs an [CustomAppBar].
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        title: const LogoWidget(),
      ),
    );
  }

  @override

  /// The preferred size for the app bar.
  Size get preferredSize => const Size.fromHeight(tHeightAppBar);
}
