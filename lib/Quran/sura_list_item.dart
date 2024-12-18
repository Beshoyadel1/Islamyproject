import 'package:flutter/material.dart';
import 'package:islamyproject/AppColors.dart';

class sura_list_item extends StatelessWidget {
  String suraEn;
  String suraAr;
  String ayaNum;
  int index;
   sura_list_item({super.key, required this.suraEn,
  required this.suraAr,required this.ayaNum,
  required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/sharaislamy.png',color: AppColor.primarycolor,),
            Text(index.toString(),style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 20,
            ),)
          ],
        ),
        SizedBox(width: 20,),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
               mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(suraEn,style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColor.whitecolor
                  ),),
                  Text('$ayaNum Verses',style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColor.whitecolor
                  ),),
                ],
              ),
              Text(suraAr,style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColor.whitecolor
              ),),
            ],
          ),
        ),

      ],
    );
  }
}
