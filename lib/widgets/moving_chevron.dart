import 'package:flutter/Material.dart';

class MovingChevron extends StatefulWidget {
  final double iconSize;
  final int speedMilliseconds;
  final double spacingBetweenIcons;
  final double movementRange;
  final Color iconColor;
  final Color backgroundColor;
  final double backgroundPadding;

  const MovingChevron({
    Key? key,
    this.iconSize = 16,
    this.speedMilliseconds = 1500,
    this.spacingBetweenIcons = 0,
    this.movementRange = 10,
    this.iconColor = const Color(0xFF33ADB8),
    this.backgroundColor = Colors.white,
    this.backgroundPadding = 8,
  }) : super(key: key);

  @override
  _MovingChevronState createState() => _MovingChevronState();
}

class _MovingChevronState extends State<MovingChevron>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _setupAnimation();
  }

  void _setupAnimation() {
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.speedMilliseconds),
      vsync: this,
    )..repeat();

    _animation = Tween<double>(
      begin: -widget.movementRange,
      end: widget.movementRange,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void didUpdateWidget(MovingChevron oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.speedMilliseconds != widget.speedMilliseconds ||
        oldWidget.movementRange != widget.movementRange) {
      _controller.dispose();
      _setupAnimation();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_animation.value, 0),
          child: Container(
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(widget.backgroundPadding),
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(
                      -(widget.iconSize * 0.4 + widget.spacingBetweenIcons),
                      0,
                    ), // ✅ Move left
                    child: Icon(
                      Icons.chevron_right_rounded,
                      color: Color.fromARGB(174, 51, 173, 184),
                      size: widget.iconSize,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: Color.fromARGB(192, 51, 173, 184),
                    size: widget.iconSize,
                  ), // ✅ Center icon
                  Transform.translate(
                    offset: Offset(
                      widget.iconSize * 0.4 + widget.spacingBetweenIcons,
                      0,
                    ), // ✅ Move right
                    child: Icon(
                      Icons.chevron_right_rounded,
                      color: widget.iconColor,
                      size: widget.iconSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
