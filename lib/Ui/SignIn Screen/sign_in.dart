import 'package:flutter/material.dart';

import '../../Const/const.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:MediaQuery.of(context).size.height/2.7 ,
              alignment: Alignment.topCenter,
              decoration:  BoxDecoration(
                  color: kWhite.withOpacity(0.1),
                  image: const DecorationImage(image: AssetImage('images/Pattern.png'),fit: BoxFit.cover)
              ),
              child: Column(
                children: [
                 const SizedBox(height: 20,),
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
              ),
            ),
            Text(
              'Login To Your Account',
              style: kTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: kTitleColor),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: kInputDecoration.copyWith(
                      hintText: 'Email',
                      labelText: 'Email'

                    ),
                  ),
                  const SizedBox(height: 15,),
                  TextFormField(
                    controller: passwordController,
                    decoration: kInputDecoration.copyWith(
                        hintText: 'Password',
                        labelText: 'Password'

                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,

            ),
            Text('Or Continue With',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,color: kTitleColor),) ,
            const SizedBox(
              height: 20,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                  border: Border.all(color: kBorderColorTextField)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height:25,
                        width: 25,
                        alignment: Alignment.topCenter,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('images/facebook.png'),fit: BoxFit.cover)
                        ),
                      ),
                      const SizedBox(width: 5,),

                      Text('Facebook',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,color: kTitleColor),) ,
                    ],
                  ),
                ),
              ),

              Container(  height: 50,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kWhite,
                    border: Border.all(color: kBorderColorTextField)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height:25,
                        width: 25,
                        alignment: Alignment.topCenter,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('images/google.png'),fit: BoxFit.cover)
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Text('Google',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,color: kTitleColor),) ,
                    ],
                  ),
                ),
              ),
            ],),

            const SizedBox(height: 20,),

            Text('Forgot Your Password?',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,color: kPrimaryColor),) ,
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const OnBoardingSecond()),
                // );
              },
              child: Container(
                height: 50,
                width: 157,
                alignment: Alignment.center,
                decoration: kBoxdecortion,

                child: Text('Login',style: kTextStyle.copyWith(color: kWhite,fontWeight: FontWeight.bold),),),
            )
          ],
        ),
      ),
    );
  }
}
