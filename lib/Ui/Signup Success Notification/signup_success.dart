import 'package:flutter/material.dart';

import '../../Const/const.dart';
import '../Verification Code/verification_code.dart';
class SignupSuccessNotification extends StatefulWidget {
  const SignupSuccessNotification({Key? key}) : super(key: key);

  @override
  State<SignupSuccessNotification> createState() => _SignupSuccessNotificationState();
}

class _SignupSuccessNotificationState extends State<SignupSuccessNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
                  height:172,
                  width: 162,
                  alignment: Alignment.topCenter,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/successfully.png'),)
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Text('Congrats!',style: kTextStyle.copyWith(fontSize: 40,fontWeight: FontWeight.bold,color: kPrimaryColor),) ,
                const SizedBox(
                  height: 10,
                ),

                Text('Your Profile Is Ready To Use',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,color: kTitleColor),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VerificationCode()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 157,
                  alignment: Alignment.center,
                  decoration: kBoxdecortion,
                  child: Text(
                    'Try Order',
                    style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}
