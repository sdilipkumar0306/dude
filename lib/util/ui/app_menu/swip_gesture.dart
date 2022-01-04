import 'package:flutter/material.dart';

class SwipeDetector extends StatefulWidget {
  final Widget child;
  final Function()? onSwipeUp;
  final Function()? onSwipeDown;
  final Function()? onSwipeLeft;
  final Function()? onSwipeRight;

  const SwipeDetector({required this.child, this.onSwipeUp, this.onSwipeDown, this.onSwipeLeft, this.onSwipeRight, Key? key}) : super(key: key);

  @override
  _SwipeDetectorState createState() => _SwipeDetectorState();
}

class _SwipeDetectorState extends State<SwipeDetector> {
  double yStartpos = 0.0;
  double yEndPos = 0.0;
  double xStartPos = 0.0;
  double xEndpos = 0.0;
  bool dragcompleted = false;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, setState) {
        return GestureDetector(
            onVerticalDragStart: (pos) {
              yStartpos = pos.globalPosition.dy;
              xStartPos = pos.globalPosition.dx;
              dragcompleted = false;
              if (!mounted) return;
              setState(() {});
            },
            onVerticalDragUpdate: (pos) {
              yEndPos = pos.globalPosition.dy;
              xEndpos = pos.globalPosition.dx;
            },
            onVerticalDragEnd: (pos) {
              if (yStartpos < yEndPos) {
                if (widget.onSwipeDown != null) widget.onSwipeDown!();
              } else if (yStartpos > yEndPos) {
                if (widget.onSwipeUp != null) widget.onSwipeUp!();
              }
              if (xStartPos < xEndpos) {
                if (widget.onSwipeRight != null) widget.onSwipeRight!();
              } else if (xStartPos > xEndpos) {
                if (widget.onSwipeLeft != null) widget.onSwipeLeft!();
              }
              if (!mounted) return;

              setState(() {});
            },
            child: Container(
              child: widget.child,
            ));
      },
    );
  }
}
