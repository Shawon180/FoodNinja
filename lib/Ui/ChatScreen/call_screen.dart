import 'package:flutter/material.dart';

import '../../Const/const.dart';
class CallingScreen extends StatefulWidget {
  const CallingScreen({Key? key}) : super(key: key);

  @override
  State<CallingScreen> createState() => _CallingScreenState();
}

class _CallingScreenState extends State<CallingScreen> {
  bool _isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
         bottomNavigationBar: Padding(
           padding: const EdgeInsets.all(50.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               InkWell(
                 onTap: (){

                     setState(() {
                       _isButtonPressed = !_isButtonPressed;
                     });

                 },
                 child: Container(
                   height: 80,
                   width: 80,
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                       color: kPrimaryColor.withOpacity(0.1),
                       shape: BoxShape.circle
                   ),child: _isButtonPressed ==true? const Icon(Icons.volume_off,color: kPrimaryColor,):const Icon(Icons.volume_up_sharp,color: kPrimaryColor,)
                 ),
               ),
               InkWell(
                 onTap: (){
                  Navigator.pop(context);
                 },
                 child: Container(
                   height: 80,
                   width: 80,
                   alignment: Alignment.center,
                   decoration: const BoxDecoration(
                       color: Colors.red,
                       shape: BoxShape.circle
                   ),child: const Icon(Icons.clear,color: kWhite,),
                 ),
               ),
             ],
           ),
         ),
        body: Column(
          children: [
            Container(
              height:MediaQuery.of(context).size.height/2.5 ,
              alignment: Alignment.topCenter,
              decoration:  BoxDecoration(
                  color: kWhite.withOpacity(0.1),
                  image: const DecorationImage(image: AssetImage('images/Pattern.png'),fit: BoxFit.cover)
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:150,
                  width: 150,
                  alignment: Alignment.topCenter,
                  decoration:  BoxDecoration(
                      border: Border.all(color: kPrimaryColor,width: 2),
                      shape: BoxShape.circle,
                      image: const DecorationImage(image: AssetImage('images/Photo Profile.png'),fit: BoxFit.cover)
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Text('Courtney Henry',style: kTextStyle.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color: kTitleColor),) ,
                const SizedBox(
                  height: 10,
                ),

                Text('Ringing . . .',style: kTextStyle.copyWith(color: kSubTitleColor),)
              ],
            ),
          ],
        )
    );
  }
}
