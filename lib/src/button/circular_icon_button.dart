import 'package:flutter/material.dart';

/// A circular icon button typically used in FAB menus.
/// Provides a Material Design circular button with an icon.
class CircularIconButton extends StatelessWidget {
  /// The icon to display inside the button
  final Widget icon;

  /// Button background color. If null, uses Theme's primaryContainer.
  final Color? backgroundColor;

  /// Icon color. If null, automatically calculated based on background.
  final Color? iconColor;

  /// Button diameter. Defaults to 48 for standard touch target.
  final double size;

  /// Elevation for shadow effect.
  final double elevation;

  /// Callback when button is pressed.
  final VoidCallback? onPressed;

  /// Tooltip message for accessibility.
  final String? tooltip;

  const CircularIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.iconColor,
    this.size = 48,
    this.elevation = 2,
    this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveBackgroundColor = backgroundColor ??
        theme.colorScheme.primaryContainer;

    // Calculate icon color based on background luminance if not specified
    final effectiveIconColor = iconColor ??
        (effectiveBackgroundColor.computeLuminance() < 0.5
            ? Colors.white
            : Colors.black87);

    Widget button = SizedBox(
      width: size,
      height: size,
      child: Material(
        color: effectiveBackgroundColor,
        elevation: elevation,
        shape: const CircleBorder(),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: Center(
            child: IconTheme.merge(
              data: IconThemeData(
                color: effectiveIconColor,
                size: size * 0.5, // Icon is half the button size
              ),
              child: icon,
            ),
          ),
        ),
      ),
    );

    // Add tooltip if specified
    if (tooltip != null) {
      button = Tooltip(
        message: tooltip!,
        child: button,
      );
    }

    return button;
  }
}