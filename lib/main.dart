import 'package:card_slider/modals/data.dart';
import 'package:card_slider/screens/card_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var sliderData = Data().getSliderData();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Card Slider Example')),
        body: CardSlider(cards: sliderData),
      ),
    );
  }
}
