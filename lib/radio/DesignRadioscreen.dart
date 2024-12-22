import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamyproject/AppColors.dart';

class Designradioscreen extends StatefulWidget {
   String titletext;
   String pathImage;

  Designradioscreen({required this.titletext,required this.pathImage});

  @override
  State<Designradioscreen> createState() => _DesignradioscreenState();
}

class _DesignradioscreenState extends State<Designradioscreen> {
  bool isStop=true;
  bool isVoice=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 30, left: 30,bottom: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColor.primarycolor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    widget.titletext,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      widget.pathImage,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){
                          setState(() {
                            isStop=!isStop;
                          });
                        }, icon:Image.asset(
                          isStop?
                            'assets/images/stop.png'
                              :
                          'assets/images/pause.png',
                        ),),
                        SizedBox(width: 20),
                        IconButton(onPressed: (){
                        setState(() {
                          isVoice=!isVoice;
                        });
                        }, icon: Image.asset(
                            isVoice?
                            'assets/images/voice.png'
                                :
                            'assets/images/mute.png'
                        ),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
