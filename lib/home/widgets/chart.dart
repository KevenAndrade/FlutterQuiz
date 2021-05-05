import 'package:flutter/material.dart';
import 'package:flutterquiz/core/app_colors.dart';
import 'package:flutterquiz/core/app_text_styles.dart';

class Chart extends StatefulWidget {
  final double porcentagen;
  const Chart({Key? key, required this.porcentagen}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  void _initAnimation() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation =
        Tween<double>(begin: 0.0, end: widget.porcentagen).animate(_controller);
  }

  @override
  void initState() {
    _initAnimation();
    super.initState();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        child: AnimatedBuilder(
            animation: _animation,
            builder: (context, _) => Stack(
                  children: [
                    Center(
                      child: Container(
                          height: 80,
                          width: 80,
                          child: CircularProgressIndicator(
                            strokeWidth: 10,
                            value: _animation.value,
                            backgroundColor: AppColors.chartSecondary,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.chartPrimary),
                          )),
                    ),
                    Center(
                        child: Text("${(_animation.value * 100).toInt()}%",
                            style: AppTextStyles.heading))
                  ],
                )));
  }
}
