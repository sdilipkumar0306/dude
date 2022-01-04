import 'package:flutter/material.dart';
import 'animated_text.dart';

class TyperAnimatedText extends AnimatedText {
  final Duration speed;

  final Curve curve;

  TyperAnimatedText(
    String text, {
    TextAlign textAlign = TextAlign.start,
    TextStyle? textStyle,
    this.speed = const Duration(milliseconds: 40),
    this.curve = Curves.linear,
  }) : super(
          text: text,
          textAlign: textAlign,
          textStyle: textStyle,
          duration: speed * text.characters.length,
        );

  late Animation<double> _typingText;

  @override
  Duration get remaining => speed * (textCharacters.length - _typingText.value);

  @override
  void initAnimation(AnimationController controller) {
    _typingText = CurveTween(
      curve: curve,
    ).animate(controller);
  }

  @override
  Widget animatedBuilder(BuildContext context, Widget? child) {
    final count = (_typingText.value.clamp(0, 1) * textCharacters.length).round();

    assert(count <= textCharacters.length);
    return textWidget(textCharacters.take(count).toString());
  }
}

@Deprecated('Use AnimatedTextKit with TyperAnimatedText instead.')
class TyperAnimatedTextKit extends AnimatedTextKit {
  TyperAnimatedTextKit({
    Key? key,
    required List<String> text,
    TextAlign textAlign = TextAlign.start,
    TextStyle? textStyle,
    Duration speed = const Duration(milliseconds: 40),
    Duration pause = const Duration(milliseconds: 1000),
    bool displayFullTextOnTap = false,
    bool stopPauseOnTap = false,
    VoidCallback? onTap,
    void Function(int, bool)? onNext,
    void Function(int, bool)? onNextBeforePause,
    VoidCallback? onFinished,
    bool isRepeatingAnimation = true,
    bool repeatForever = true,
    int totalRepeatCount = 3,
    Curve curve = Curves.linear,
  }) : super(
          key: key,
          animatedTexts: _animatedTexts(text, textAlign, textStyle, speed, curve),
          pause: pause,
          displayFullTextOnTap: displayFullTextOnTap,
          stopPauseOnTap: stopPauseOnTap,
          onTap: onTap,
          onNext: onNext,
          onNextBeforePause: onNextBeforePause,
          onFinished: onFinished,
          isRepeatingAnimation: isRepeatingAnimation,
          repeatForever: repeatForever,
          totalRepeatCount: totalRepeatCount,
        );

  static List<AnimatedText> _animatedTexts(
    List<String> text,
    TextAlign textAlign,
    TextStyle? textStyle,
    Duration speed,
    Curve curve,
  ) =>
      text
          .map((_) => TyperAnimatedText(
                _,
                textAlign: textAlign,
                textStyle: textStyle,
                speed: speed,
                curve: curve,
              ))
          .toList();
}
