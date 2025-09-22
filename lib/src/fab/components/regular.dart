import 'package:flutter/widgets.dart';
import 'package:m3_expressive_flutter/src/fab/m3e_fab.dart';

class Regular extends StatelessWidget {
  final Widget icon;
  final Color? color;
  final VoidCallback? onPressed;
  const Regular({
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
      size: FabSize.regular,
      onPressed: onPressed,
    );
  }
}
