import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamyproject/AppColors.dart';

class Designradioscreen extends StatelessWidget {
  String titletext;

   Designradioscreen({super.key,required this.titletext});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 30,left: 30,bottom: 20),
            child: Container(
              color: AppColor.primarycolor,
              child: Column(
                children: [
                  Text(titletext,style: Theme.of(context).textTheme.bodyMedium,),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logoislamy.png',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/stop.png'),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/voice.png'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
