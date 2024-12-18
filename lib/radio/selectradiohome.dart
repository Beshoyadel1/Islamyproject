import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamyproject/AppColors.dart';
import 'package:islamyproject/radio/DesignRadioscreen.dart';

class selectradiohome extends StatelessWidget {
  const selectradiohome({super.key});

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
