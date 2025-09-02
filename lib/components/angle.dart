import 'package:bike/components/colors.dart';
import 'package:flutter/material.dart';

enum TriangleDirection { left, right, up, down }

/// Self-contained triangle that EXPANDS to the available parent size
/// and positions itself using the top/left/right/bottom you pass in.
/// Use inside Scaffold.body, an Expanded, or any parent with finite size.
class FloatingTriangle extends StatelessWidget {
  final Color color;
  final double size;
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final TriangleDirection direction;
  final LinearGradient? gradient;

  const FloatingTriangle({
    super.key,
    this.color = AppColors.primaryBlue,
    this.size = 100,
    this.top,
    this.gradient,
    this.left,
    this.right,
    this.bottom,
    this.direction = TriangleDirection.right,
  });

  @override
  Widget build(BuildContext context) {
    // SizedBox.expand ensures the internal Stack has a bounded area to position inside.
    // If you put this widget inside an unbounded parent (e.g. Column without Expanded),
    // wrap it with SizedBox(height: XXX) or put inside Expanded.
    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned(
            top: top,
            left: left,
            right: right,
            bottom: bottom,
            child: SizedBox(
              width: size,
              height: size,
              child: CustomPaint(
                painter: _TrianglePainter(color,  direction),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Simple triangle-only widget you can use inline (no positioning).
class TriangleShape extends StatelessWidget {
  final Color color;
  final double size;
  final TriangleDirection direction;

  const TriangleShape({
    super.key,
    this.color = Colors.red,
    this.size = 100,
    this.direction = TriangleDirection.right,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _TrianglePainter(color, direction),
      ),
    );
  }
}

class _TrianglePainter extends CustomPainter {
  final Color color;
  final TriangleDirection direction;

  _TrianglePainter(this.color, this.direction);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path();

    switch (direction) {
      case TriangleDirection.right:
        path.moveTo(0, 0);
        path.lineTo(size.width, size.height / 2);
        path.lineTo(0, size.height);
        break;
      case TriangleDirection.left:
        path.moveTo(size.width, 0);
        path.lineTo(0, size.height / 2);
        path.lineTo(size.width, size.height);
        break;
      case TriangleDirection.up:
        path.moveTo(0, size.height);
        path.lineTo(size.width / 2, 0);
        path.lineTo(size.width, size.height);
        break;
      case TriangleDirection.down:
        path.moveTo(0, 0);
        path.lineTo(size.width / 2, size.height);
        path.lineTo(size.width, 0);
        break;
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _TrianglePainter old) =>
      old.color != color || old.direction != direction;
}
