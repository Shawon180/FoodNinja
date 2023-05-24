import 'package:flutter/material.dart';
import 'package:foodninja/Ui/SignIn%20Screen/sign_in.dart';

import '../../Const/const.dart';
class PasswordResetSuccessful extends StatefulWidget {
  const PasswordResetSuccessful({Key? key}) : super(key: key);

  @override
  State<PasswordResetSuccessful> createState() => _PasswordResetSuccessfulState();
}

class _PasswordResetSuccessfulState extends State<PasswordResetSuccessful> {
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

                Text('Congrats! ',style: kTextStyle.copyWith(fontSize: 40,fontWeight: FontWeight.bold,color: kPrimaryColor),) ,
                const SizedBox(
                  height: 10,
                ),

                Text('Password reset successful ',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,color: kTitleColor,fontSize: 18),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInScreen()),
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
