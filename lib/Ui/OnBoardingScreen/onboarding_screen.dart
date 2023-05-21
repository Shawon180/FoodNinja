import 'package:flutter/material.dart';
import 'package:foodninja/Ui/OnBoardingScreen/onboarding_second.dart';

import '../../Const/const.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/OnBoardingFirst.png'), fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Find your  Comfort\nFood here',
              style: kTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: kTitleColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Here You Can find a chef or dish for every\ntaste and color. Enjoy!',
              style: kTextStyle.copyWith(color: kSubTitleColor),
              textAlign: TextAlign.center,
            ),
const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OnBoardingSecond()),
                );
              },
              child: Container(
                height: 50,
                width: 157,
                alignment: Alignment.center,
                decoration: kBoxdecortion,

              child: Text('Next',style: kTextStyle.copyWith(color: kWhite,fontWeight: FontWeight.bold),),),
            )


          ],
        ),
      ),
    );
  }
}
