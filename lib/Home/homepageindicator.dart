// done
import 'package:flutter/material.dart';

class MyTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _MyTabIndicatorPainter(this, onChanged);
  }
}

class _MyTabIndicatorPainter extends BoxPainter {
  final MyTabIndicator decoration;

  _MyTabIndicatorPainter(this.decoration, VoidCallback? onChanged)
      : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint();
    paint.color = const Color(0xFF1A47E6); // Customize the indicator color
    const double upperWidth = 50; // Fixed width of the indicator
    const double bottomWidth = upperWidth * 0.8; // Customize the bottom width
    const double height = 4;
    const double yOffset = -14; // Customize the y-offset
    final Path path = Path();
    path.moveTo(offset.dx + (configuration.size!.width - upperWidth) / 2,
        configuration.size!.height - height - 10 - yOffset);
    path.lineTo(offset.dx + (configuration.size!.width + upperWidth) / 2,
        configuration.size!.height - height - 10 - yOffset);
    path.lineTo(offset.dx + (configuration.size!.width + bottomWidth) / 2,
        configuration.size!.height - 10 - yOffset);
    path.lineTo(offset.dx + (configuration.size!.width - bottomWidth) / 2,
        configuration.size!.height - 10 - yOffset);
    path.close();
    canvas.drawPath(path, paint);
  }
}
