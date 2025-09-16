import 'package:m3_expressive_flutter/src/shapes/circle.dart' as shapes_;

class Shapes {
  const Shapes();
  static const Circle = shapes_.Circle.new;

  shapes_.Circle get circle => const shapes_.Circle();
}
