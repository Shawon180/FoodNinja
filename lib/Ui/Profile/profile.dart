import 'package:flutter/material.dart';
import 'package:foodninja/Const/const.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/profile.png'), fit: BoxFit.cover)),
                ),
                Container(
                  height: 30,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: kBackgroundColor),
                  child: Container(
                    height: 6,
                    width: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xffFEF6ED)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(color: const Color(0xffFEAD1D).withOpacity(0.1), borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Member Gold',
                        style: kTextStyle.copyWith(color: const Color(0xffFEAD1D)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Anam Wusono',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold,fontSize: 25),),
                          Text('anamwp66@gmail.com',style: kTextStyle.copyWith(color: kSubSubTitleColor),)
                        ],
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.edit,color: kPrimaryColor,)),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: kWhite
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Image.asset('images/VoucherIcon.png',width: 46,height: 43,),
                          const SizedBox(width: 10,),
                          Text('You Have 3 Voucher',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold,),),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text('Favorite',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold,),),


                  ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_,index){

                    return  Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: kWhite
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('images/PhotoMenu.png',width: 62,height: 62,),
                                  const SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Spacy fresh crab',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold,),),
                                      Text('Waroenk kita',style: kTextStyle.copyWith(color: kSubSubTitleColor),),
                                      Text('\$ 35',style: kTextStyle.copyWith(color: kPrimaryColor),),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                decoration: kBoxdecortion,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Buy Again',style: kTextStyle.copyWith(color: kWhite,fontWeight: FontWeight.bold),),
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    );
                  })

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
