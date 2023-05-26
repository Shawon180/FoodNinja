import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:chat_bubbles/date_chips/date_chip.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodninja/Ui/ChatScreen/call_screen.dart';
import '../../Const/const.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  Duration duration = new Duration();
  Duration position = new Duration();
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('images/Pattern.png'),
          Padding(
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
                  'Chat',
                  style: kTextStyle.copyWith(fontSize: 23, fontWeight: FontWeight.bold, color: kTitleColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(color: kWhite, borderRadius: BorderRadius.circular(22)),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ChatsScreen()),
                      );
                    },
                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/Photo Profile.png'))),
                    ),
                    title: Text(
                      'Anamwap',
                      style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        Container(
                          height:8,
                          width: 8,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: kPrimaryColor,
                            shape: BoxShape.circle
                          ),
                        ),
                        const SizedBox(width: 4,),
                        const Text('Online'),
                      ],
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const CallingScreen()),
                            );
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: kPrimaryColor.withOpacity(0.1),
                              shape: BoxShape.circle
                            ),child: const Icon(Icons.call,color: kPrimaryColor,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250.0, right: 15, left: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  BubbleNormal(
                    text: 'Just to order',
                    isSender: false,
                    color: const Color(0xFFE8E8EE),
                    tail: true,
                    textStyle: const TextStyle(fontSize: 20, color: kTitleColor),
                  ),
                  BubbleNormal(
                    text: 'Okay, for what level of spiciness?',
                    isSender: true,
                    color: kPrimaryColor,
                    tail: true,
                    sent: true,
                  ),
                  DateChip(
                    date: DateTime(now.year, now.month, now.day - 2),
                  ),
                  BubbleNormal(
                    text: 'Okay, wait a minute 👍',
                    isSender: false,
                    color: const Color(0xFFE8E8EE),
                    tail: true,
                    textStyle: const TextStyle(fontSize: 20, color: kTitleColor),
                  ),
                  BubbleNormal(
                    text: 'Okay I\'m waiting  👍',
                    isSender: true,
                    color: kPrimaryColor,
                    tail: true,
                    sent: true,
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          MessageBar(
            onSend: (_) => print(_),
            sendButtonColor: kPrimaryColor,
            actions: [
              InkWell(
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 24,
                ),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: InkWell(
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.green,
                    size: 24,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
