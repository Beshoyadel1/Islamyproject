import 'package:flutter/material.dart';
import 'package:islamyproject/Hadith/hadithHome.dart';
import 'package:islamyproject/Time/timeHome.dart';
import 'package:islamyproject/radio/radioHome.dart';
import 'package:islamyproject/sebha/sebhaHome.dart';

import 'Quran/QuranHome.dart';

class HomeScreen extends StatefulWidget {
  static const String RouteName='HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectindex=0;
  List<String> backgroungimages=[
    'assets/images/background.png',
    'assets/images/Background2.png',
    'assets/images/Background3.png',
    'assets/images/Background4.png',
    'assets/images/Background5.png'
  ];

List<Widget>tabs=[QuranHome(),hadithHome(),SebhaHome(), radioHome(), timeHome()];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(backgroungimages[selectindex],height: double.infinity,
          width: double.infinity,fit: BoxFit.fill,),
        Scaffold(
          body: tabs[selectindex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectindex,
              onTap: (index){
              selectindex=index;
              setState(() {
              });
              },
              items:[
                BottomNavigationBarItem(icon:selectindex==0 ?
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(66),
                    color: const Color(0x99202020)
                  ),
                  child: const ImageIcon(
                      AssetImage('assets/images/Quran.png')),
                )
                    :
                const ImageIcon(
                    AssetImage('assets/images/Quran.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(icon:selectindex==1?
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: const Color(0x99202020)
                  ),
                  child: const ImageIcon(
                      AssetImage('assets/images/Hadith.png')
                  ),
                )
                    :
                const ImageIcon(
                    AssetImage('assets/images/Hadith.png')
                ),
                    label: 'Hadith'),

                BottomNavigationBarItem(icon: selectindex==2?
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: const Color(0x99202020)
                  ),
                  child: const ImageIcon(
                      AssetImage('assets/images/sebha.png')),
                )
                 :
                const ImageIcon(
                    AssetImage('assets/images/sebha.png')),
                    label: 'sebha'),
                BottomNavigationBarItem(icon: selectindex==3?
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: const Color(0x99202020)
                  ),
                  child: const ImageIcon(
                      AssetImage('assets/images/radio.png')),
                )
                    :
                const ImageIcon(
                    AssetImage('assets/images/radio.png')),
                    label: 'radio'),
                BottomNavigationBarItem(icon: selectindex==4?
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: const Color(0x99202020)
                  ),
                  child: const ImageIcon(
                      AssetImage('assets/images/Time.png')),
                )
                    :
                const ImageIcon(
                    AssetImage('assets/images/Time.png')),
                    label: 'Time'),
              ],
          ),
        )
      ],
    );
  }
}
