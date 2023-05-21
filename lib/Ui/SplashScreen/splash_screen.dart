import 'package:flutter/material.dart';

import '../../Const/const.dart';
import '../OnBoardingScreen/onboarding_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<void> goNext() async {
    Future.delayed(const Duration(seconds: 3)).then(
          (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      ),
    );
  }

  @override
  void initState() {
    goNext();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height:MediaQuery.of(context).size.height/2.5 ,
              alignment: Alignment.topCenter,
              decoration:  BoxDecoration(
                color: kWhite.withOpacity(0.1),
                  image: const DecorationImage(image: AssetImage('images/Pattern.png'),fit: BoxFit.cover)
              ),
            ),
            Container(
              height:139,
              width: 175,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/Logo.png'),fit: BoxFit.cover)
              ),
            ),
            
            const SizedBox(
              height: 10,
            ),
            
            Text('FoodNinja',style: kTextStyle.copyWith(fontSize: 40,fontWeight: FontWeight.bold,color: kPrimaryColor),) ,
            const SizedBox(
              height: 10,
            ),

            Text('Deliever Favorite Food',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,color: kTitleColor),)
          ],
        )
    );
  }
}
