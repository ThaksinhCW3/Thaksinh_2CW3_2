import "package:flutter/material.dart";

class AnimatedContainerWidgetState extends StatefulWidget {
  const AnimatedContainerWidgetState({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedContainerWidgetState> createState() =>
      AnimatedContainerWidgetStateState();
}

class AnimatedContainerWidgetStateState
    extends State<AnimatedContainerWidgetState> {
  double _height = 100.0;
  double _width = 100.0;

  void increaseWidth() {
    setState(() {
      _width = _width >= 320.0 ? 100.0 : _width += 50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.elasticOut,
          height: _height,
          width: _width,
          child: ElevatedButton(
            child: Text('Tap to Grow Width\n$_width'),
            onPressed: () {
              increaseWidth();
            },
          ),
        ),
      ],
    );
  }
}
