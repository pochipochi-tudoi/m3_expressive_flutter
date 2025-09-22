import 'package:flutter/widgets.dart';
import '../m3e_fab.dart';

class Small extends StatelessWidget {
  final Widget icon;
  final Color? color;
  final VoidCallback? onPressed;
  const Small({
    super.key,
    required this.icon,
    this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return M3eFabCore(
      icon: icon,
      color: color,
      size: FabSize.small,
      onPressed: onPressed,
    );
  }
}
