import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  /// Diameter of the circle. Defaults to 42.
  final double size;

  /// Fill color when [image] is not provided. Defaults to [Colors.purple].
  final Color color;

  /// If provided, the circle will display this image clipped to a circle.
  /// e.g. AssetImage('assets/foo.png'), NetworkImage('...'), MemoryImage(...)
  final ImageProvider? image;

  const Circle({
    super.key,
    this.size = 42,
    this.color = Colors.purple,
    this.image,
  }) : assert(size > 0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ClipOval(
        child: image != null
            ? Image(image: image!, fit: BoxFit.cover, width: size, height: size)
            : DecoratedBox(
                decoration: BoxDecoration(color: color),
                child: const SizedBox.expand(),
              ),
      ),
    );
  }
}
