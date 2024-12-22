import 'package:flutter/material.dart';
import 'package:islamyproject/AppColors.dart';
import 'package:islamyproject/radio/selectRecitershome.dart';
import 'package:islamyproject/radio/selectradiohome.dart';

class radioHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/logoislamy.png',
              fit: BoxFit.contain,
              height: 200, // Adjust height as needed
            ),
             TabBar(
               indicator: BoxDecoration(
                   color: AppColor.primarycolor
               ),
              labelColor: AppColor.blackcolor,
              unselectedLabelColor: AppColor.whitecolor,
              tabs: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Tab(child: Text('Radio',style:TextStyle(fontSize: 30),)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Tab(child: Text('Reciters',style:TextStyle(fontSize: 30),)),
                  ],
                ),
              ],
                         ),
            Expanded(
              child: TabBarView(
                children: [
                  selectradiohome(),
                  selectRecitershome(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

