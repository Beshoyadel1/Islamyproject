import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyproject/AppColors.dart';
import 'package:islamyproject/Quran/itemsuracontent.dart';

class sura_details_screen extends StatefulWidget {
  static const String RouteName='sura_details_screen';

  @override
  State<sura_details_screen> createState() => _sura_details_screenState();
}

class _sura_details_screenState extends State<sura_details_screen> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;
    if(verses.isEmpty){
      loadhfile(args.index);
    }
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Text(args.suraEnName,style: Theme.of(context).textTheme.headlineLarge,),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/sura_ditails_screen.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
         // SizedBox(height: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Expanded(child: Text(args.suraArName,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge,
                )),
              ),
              Expanded(
                flex: 2,
                  child: verses.isEmpty?
                      Center(child: CircularProgressIndicator())
                      :
                  ListView.builder(
                      itemBuilder:(context,index){
                        return itemsuracontent(content: verses[index],index: index,);
                      },
                    itemCount: verses.length,

                  ),

              )
            ],
          )
        ],
      ),
    );
  }

  void loadhfile(int index) async{
    var content= await rootBundle.loadString('assets/files/h${index+1}.txt');
    List<String> lines=content.split('\n');
    verses=lines;
    setState(() {

    });
  }
}
class suraDetailsArgs{
  String suraArName;
  String suraEnName;
  int index;
  suraDetailsArgs({required this.index,required this.suraArName,required this.suraEnName});
}