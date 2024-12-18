import 'package:flutter/cupertino.dart';
import 'package:islamyproject/radio/DesignRadioscreen.dart';

class selectRecitershome extends StatelessWidget {
  const selectRecitershome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Designradioscreen(titletext: 'Radio Ibrahim Al-Akdar'),
        Designradioscreen(titletext: 'Radio Ibrahim Al-Akdar'),
        Designradioscreen(titletext: 'Radio Ibrahim Al-Akdar'),
        Designradioscreen(titletext: 'Radio Ibrahim Al-Akdar'),
        Designradioscreen(titletext: 'Radio Ibrahim Al-Akdar'),
      ],
    );
  }
}
