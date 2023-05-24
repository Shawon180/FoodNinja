import 'package:flutter/material.dart';
import 'package:foodninja/Ui/Payment%20Method/payment_method.dart';

import '../../Const/const.dart';

class SignUpProcess extends StatefulWidget {
  const SignUpProcess({Key? key}) : super(key: key);

  @override
  State<SignUpProcess> createState() => _SignUpProcessState();
}

class _SignUpProcessState extends State<SignUpProcess> {
  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController mobileController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2.9,
                  alignment: Alignment.topRight,
                  decoration:
                      BoxDecoration(color: kWhite.withOpacity(0.1), image: const DecorationImage(image: AssetImage('images/appBarBg.png'), fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffF9A84D),
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Color(0xffDA6317),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Fill in your bio to get\nstarted',
                          style: kTextStyle.copyWith(fontSize: 23, fontWeight: FontWeight.bold, color: kTitleColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'This data will be displayed in your account profile\nfor security',
                          style: kTextStyle.copyWith(color: kSubTitleColor),
                        ),








                      ],
                    ),
                  ),
                ),


                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: firstNameController,
                          decoration: kInputDecoration.copyWith(
                              hintText: 'First Name',
                              labelText: 'First Name'

                          ),
                        ),
                        const SizedBox(height: 20,),
                        TextFormField(
                          controller: lastNameController,
                          decoration: kInputDecoration.copyWith(
                              hintText: 'Last Name',
                              labelText: 'Last Name'

                          ),
                        ),
                        const SizedBox(height: 20,),
                        TextFormField(
                          controller: mobileController,
                          decoration: kInputDecoration.copyWith(
                              hintText: 'Mobile Number',
                              labelText: 'Mobile Number'

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),


            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaymentMethod()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 157,
                  alignment: Alignment.center,
                  decoration: kBoxdecortion,

                  child: Text('Next',style: kTextStyle.copyWith(color: kWhite,fontWeight: FontWeight.bold),),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
