import 'package:flutter/material.dart';
import 'dart:math' as math;

class SebhaHome extends StatefulWidget {
  const SebhaHome({super.key});

  @override
  State<SebhaHome> createState() => _SebhaHomeState();
}

class _SebhaHomeState extends State<SebhaHome> with SingleTickerProviderStateMixin {
  int count = 0, count2 = 0;
  String tasbeehText = 'سبحان الله';

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void incrementCounter() {
    if (!_controller.isAnimating) {
      _controller.forward(from: 0);
    }

    setState(() {
      count++;
      count2++;

      if (count2 == 10) {
        tasbeehText = 'الله أكبر ';
        count = 0;
      } else if (count2 == 25) {
        tasbeehText = 'لا إله إلا الله';
        count = 0;
      } else if (count2 == 55) {
        tasbeehText = 'الحمد لله';
        count = 0;
      } else if (count2 == 88) {
        tasbeehText = 'لا حول الله';
        count = 0;
      } else if (count2 == 99) {
        tasbeehText = 'سبحان الله';
        count = 0;
        count2 = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/logoislamy.png'),
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: incrementCounter,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _controller.value * 2 * math.pi,
                      child: child,
                    );
                  },
                  child: Image.asset('assets/images/SebhaBody.png'),
                ),
                Column(
                  children: [
                    Text(
                      tasbeehText,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '$count',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
