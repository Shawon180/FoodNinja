import 'package:flutter/material.dart';
import 'package:foodninja/Const/const.dart';
import 'package:foodninja/Ui/Signup%20Success%20Notification/signup_success.dart';
class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                        'Set Your Location ',
                        style: kTextStyle.copyWith(fontSize: 23, fontWeight: FontWeight.bold, color: kTitleColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'This data will be displayed in your account profile for security',
                        style: kTextStyle.copyWith(color: kSubTitleColor),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), color: kWhite),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'images/PinLogo.png',
                              height: 33,
                            ),
                            const SizedBox(width: 5,),
                            Text('Your Location',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,color: kTitleColor),),


                            
                          ],
                        ),
                        const SizedBox(height: 20,),
                        InkWell(
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context) => const LocationScreen()),
                          //   );
                          // },
                          child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: const Color(0xffF6F6F6)
                            ),
                            child:  Text('Set Location',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,color: kTitleColor),),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupSuccessNotification()),
                );
              },
              child: Container(
                height: 50,
                width: 157,
                alignment: Alignment.center,
                decoration: kBoxdecortion,
                child: Text(
                  'Next',
                  style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
