import 'package:amim/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 227,
        height: 227,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(begin: Alignment(-0.72, -0.70), end: Alignment(0.72, 0.7), colors: [
            Color(0xFFE142FB),
            Color(0xFFD243FC),
            Color(0xFFC344FD),
            Color(0xFFB245FE),
            Color(0xFFA046FF),
            Color(0xFF8B3EE5),
            Color(0xFF722DB5),
            Color(0xFF591D87),
            Color(0xFF3F105C),
            Color(0xFF250536),
          ]),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(120),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 24,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                Assets.compressingHat,
                width: 89,
                height: 97,
              ),
            )
                .animate(
                  delay: 3000.ms,
                  onPlay: (controller) {
                    // controller.repeat();
                  },
                )
                .fadeIn(duration: 2.seconds),
            Positioned(
              bottom: 109,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                Assets.compressingLid,
                width: 46,
                height: 29,
              ),
            )
                .animate(
                  delay: 1000.ms,
                  onPlay: (controller) {
                    // controller.repeat();
                  },
                )
                .fadeIn(duration: 2.seconds)
                .then(delay: 100.ms)
                .fadeOut(
                  duration: 1.seconds,
                  curve: Curves.easeInOut,
                ),
            Positioned(
              bottom: 31,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                Assets.compressingBin,
                height: 85,
                width: 85,
              ),
            )
                .animate(
                  delay: 1000.ms,
                  onPlay: (controller) {
                    // Future.delayed(3.seconds, () {
                    //   controller.repeat();
                    // });
                  },
                )
                .fadeIn(duration: 2.seconds)
          ],
        ));
  }
}
