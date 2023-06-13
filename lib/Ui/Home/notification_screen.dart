import 'package:flutter/material.dart';

import '../../Const/const.dart';
import '../ChatScreen/chat_screen.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height /5,
            width: double.infinity,

            decoration:
            BoxDecoration(color: kWhite.withOpacity(0.1), image: const DecorationImage(image: AssetImage('images/appBarBg.png'), fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
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
                    'Notification',
                    style: kTextStyle.copyWith(fontSize: 23, fontWeight: FontWeight.bold, color: kTitleColor),
                  ),


                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color:kWhite,
                      borderRadius: BorderRadius.circular(22)
                  ),
                  child: ListTile(

                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/successfullyIcon.png'))
                      ),
                    ),
                    title: Text('Your order has been taken by the driver',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),
                    subtitle:  const Text('Recently'),


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color:kWhite,
                      borderRadius: BorderRadius.circular(22)
                  ),
                  child: ListTile(

                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/topupIcon.png'))
                      ),
                    ),
                    title: Text('TopUp for \$100 was successful',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),
                    subtitle:  const Text('10.00 Am'),


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color:kWhite,
                      borderRadius: BorderRadius.circular(22)
                  ),
                  child: ListTile(

                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/canceledIcon.png'))
                      ),
                    ),
                    title: Text('Your order has been canceled',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),
                    subtitle:  const Text('22 Juny 2021'),


                  ),
                ),
              ),
            ],),
          )
        ],),
      ),
    );
  }
}
