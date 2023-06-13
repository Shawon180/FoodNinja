import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:share_plus/share_plus.dart';

import '../../Const/const.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: kBoxdecortion.copyWith(image: const DecorationImage(image: AssetImage('images/Pattern1.png'), fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub-Total',
                          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '120 \$',
                          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Charge',
                          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '10 \$',
                          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount',
                          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '20 \$',
                          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          '150 \$',
                          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: kWhite, borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    'Place My Order ',
                    style: kTextStyle.copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/appBarBg.png'), fit: BoxFit.cover, colorFilter: ColorFilter.linearToSrgbGamma())),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
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
                          color: const Color(0xffF9A84D).withOpacity(0.1),
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
                      'Order details',
                      style: kTextStyle.copyWith(fontSize: 23, fontWeight: FontWeight.bold, color: kTitleColor),
                    ),
                  ],
                ),
              ),
            ),

            StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) { return  ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Slidable(
                        key:  ValueKey(1),
                        endActionPane: ActionPane(
                          motion:  ScrollMotion(),
                          dismissible: DismissiblePane(onDismissed: () {}),
                          children: [
                            SlidableAction(
                              onPressed: (contex){
                                Share.share('check out my website https://example.com', subject: 'Look what I made!');
                              },

                              backgroundColor: const Color(0xFF21B7CA),
                              foregroundColor: Colors.white,
                              icon: Icons.share,
                              borderRadius: BorderRadius.circular(22),
                              label: 'Share',
                            ),
                            SlidableAction(
                              onPressed: (contex){

                              },

                              backgroundColor: const Color(0xFFFE4A49),
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              borderRadius: BorderRadius.circular(22),
                              label: 'Delete',
                              spacing: 5,
                            ),

                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0, left: 10),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), color: kWhite),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'images/PhotoMenu.png',
                                        width: 62,
                                        height: 62,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Spacy fresh crab',
                                            style: kTextStyle.copyWith(
                                              color: kTitleColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Waroenk kita',
                                            style: kTextStyle.copyWith(color: kSubSubTitleColor),
                                          ),
                                          Text(
                                            '\$ 35',
                                            style: kTextStyle.copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 18),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 40,
                                          width: 40,
                                          alignment: Alignment.topCenter,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: kPrimaryColor.withOpacity(0.1)),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Text(
                                                '-',
                                                style: kTextStyle.copyWith(color: kPrimaryColor, fontSize: 30),
                                              ))),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '1',
                                        style: kTextStyle.copyWith(color: kTitleColor, fontSize: 20),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                          height: 40,
                                          width: 40,
                                          alignment: Alignment.topCenter,
                                          decoration: BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.add,
                                                color: kWhite,
                                              ))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
                  );
                }); },

            )
          ],
        ),
      ),
    );
  }
}
