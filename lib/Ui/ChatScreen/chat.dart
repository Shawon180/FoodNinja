import 'package:flutter/material.dart';

import '../../Const/const.dart';
import 'chat_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(

        ),
        child: Column(
          children: [
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
                      'Chat',
                      style: kTextStyle.copyWith(fontSize: 23, fontWeight: FontWeight.bold, color: kTitleColor),
                    ),

                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15),
              child: ListView.builder(
                shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (_,index){

                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color:kWhite,
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: ListTile(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ChatsScreen()),
                        );
                      },
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('images/Photo Profile.png'))
                        ),
                      ),
                      title: Text('Anamwap',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),
                      subtitle:  const Text('Your Order Just Arrived!'),

                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text('20:07',style: kTextStyle.copyWith(color: kBorderColorTextField),),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })
            )

          ],
        ),
      ),
    );
  }
}
