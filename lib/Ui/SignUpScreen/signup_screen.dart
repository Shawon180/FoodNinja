import 'package:flutter/material.dart';

import '../../Const/const.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  bool selectIndex = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:MediaQuery.of(context).size.height/2.7,
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
              'Sign Up For Free ',
              style: kTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: kTitleColor),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: kInputDecoration.copyWith(
                        hintText: 'Name',
                        labelText: 'Name',
                        prefixIcon: const Icon(Icons.person,color: kPrimaryColor,)

                    ),

                  ),

                  const SizedBox(height: 15,),
                  TextFormField(
                    controller: emailController,
                    decoration: kInputDecoration.copyWith(
                        hintText: 'Email',
                        labelText: 'Email',
                      prefixIcon: const Icon(Icons.email,color: kPrimaryColor,)

                    ),
                    
                  ),
                  const SizedBox(height: 15,),
                  TextFormField(
                    controller: passwordController,
                    decoration: kInputDecoration.copyWith(
                        hintText: 'Password',
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock,color: kPrimaryColor,)

                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,

            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                    const Icon(Icons.check_circle,color: kPrimaryColor,),
                      const SizedBox(width: 5,),
                      Text('Keep Me Signed In',style: kTextStyle.copyWith(color: kSubTitleColor),),
                    ],
                  ),

       const SizedBox(height: 10,),

                  Row(
                    children: [
                      const Icon(Icons.check_circle,color: kPrimaryColor,),
                      const SizedBox(width: 5,),
                      Text('Email Me About Special Pricing',style: kTextStyle.copyWith(color: kSubTitleColor),),
                    ],
                  ),
                ],
              ),
            ),
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

                child: Text('Create Account',style: kTextStyle.copyWith(color: kWhite,fontWeight: FontWeight.bold),),),
            ),

            const SizedBox(height: 20,),

            Text('already have an account?',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,color: kPrimaryColor),) ,
          ],
        ),
      ),
    );
  }
}
