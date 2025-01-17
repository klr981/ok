import 'dart:ui';

import 'package:flutter/widgets.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      builder: (BuildContext context, Widget? navigator) =>
          const ExampleWidget(),
      color: const Color(0xffffffff),
    );
  }
}

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // The Source Code Pro font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return Text(
      'aáâ β gǵĝ θб Iiíî Ll',
      style: TextStyle(
        fontFamily: 'Source Code Pro',
        fontFeatures: <FontFeature>[
          FontFeature.stylisticSet(2),
          FontFeature.stylisticSet(3),
          FontFeature.stylisticSet(4),
        ],
      ),
    );
  }
}
