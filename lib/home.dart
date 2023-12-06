import 'package:flutter/material.dart';
import 'package:thaksin_animate/animated_container.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AnimatedContainerWidgetState(),
          ],
        ),
      ),
    );
  }
}
