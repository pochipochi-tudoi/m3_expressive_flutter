import 'package:flutter/widgets.dart';
import '../m3e_fab.dart';

class Large extends StatelessWidget {
  final Widget icon;
  final Color? color;
  final VoidCallback? onPressed;
  const Large({
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
      size: FabSize.large,
      onPressed: onPressed,
    );
  }
}
