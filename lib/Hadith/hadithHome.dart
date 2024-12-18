import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyproject/Hadith/hadithitem.dart';

class hadithHome extends StatefulWidget {
  @override
  State<hadithHome> createState() => _hadithHomeState();
}

class _hadithHomeState extends State<hadithHome> {
  List<Hadith>hadithlist=[];

  @override
  Widget build(BuildContext context) {
    if(hadithlist.isEmpty){
      loadhadith();
    }
    return hadithlist.isEmpty?
        Center(child: CircularProgressIndicator())
    :
    Column(
      children: [
        Image.asset('assets/images/logoislamy.png'),
        SizedBox(
          height: 10,
        ),
        CarouselSlider(
            items:hadithlist.map((hadith){
              return hadithitem(title:  hadith.title, content: hadith.content.join('\n'));
            }).toList(),
            options: CarouselOptions(
              height: 600,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            )
        ),
      ],
    );
  }

  void loadhadith() async{
    for (int i=0;i<50;i++){
     var hadithload= await rootBundle.loadString('assets/files/h${i+1}.txt');
     List<String> hadithlines=hadithload.split('\n');
    String title=hadithlines[0];
     hadithlines.removeAt(0);
     Hadith hadith=Hadith(content: hadithlines, title: title);
     hadithlist.add(hadith);
     setState(() {

     });
    }
  }
}
class Hadith{
  String title;
  List<String> content;
  Hadith({required this.content,required this.title});
}