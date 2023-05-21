import 'package:flutter/material.dart';
import 'package:foodninja/Ui/SignIn%20Screen/sign_in.dart';

import '../../Const/const.dart';
import '../SignUpScreen/signup_screen.dart';
class OnBoardingSecond extends StatefulWidget {
  const OnBoardingSecond({Key? key}) : super(key: key);

  @override
  State<OnBoardingSecond> createState() => _OnBoardingSecondState();
}

class _OnBoardingSecondState extends State<OnBoardingSecond> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/onBoardingSecond.png'), fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Food Ninja is Where Your\nComfort Food Lives',
              style: kTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: kTitleColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Enjoy a fast and smooth food delivery at\nyour doorstep',
              style: kTextStyle.copyWith(color: kSubTitleColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
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
