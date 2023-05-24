import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodninja/Ui/Forget%20Password/forget_password.dart';
import 'package:pinput/pinput.dart';

import '../../Const/const.dart';
class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  //______________________________________________________________________Timer
  int _secondsRemaining = 90;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer!.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
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
                        'Enter 4-digit\nVerification code',
                        style: kTextStyle.copyWith(fontSize: 23, fontWeight: FontWeight.bold, color: kTitleColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Code send to +6282045**** . This code will expired in $_secondsRemaining',
                        style: kTextStyle.copyWith(color: kSubTitleColor),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  StatefulBuilder(
                      builder:(context,index){
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: kWhite
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Pinput(
                              length: 4,
                              focusedPinTheme: PinTheme(
                                  height: 55,
                                  width: 55,
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(30, 60, 87, 1),
                                      fontWeight: FontWeight.w600),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: kPrimaryColor),
                                  )),
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              defaultPinTheme: PinTheme(
                                  height: 55,
                                  width: 55,
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(30, 60, 87, 1),
                                      fontWeight: FontWeight.w600),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color:
                                        const Color.fromRGBO(234, 239, 243, 1)),
                                  )),
                            ),
                          ),
                        );
                      }
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ForgetPassword()),
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
