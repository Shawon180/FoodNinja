import 'package:flutter/material.dart';
import 'package:foodninja/Ui/Detail%20product/detail_product.dart';
import 'package:foodninja/Ui/Home/filter_screen.dart';
import 'package:foodninja/Ui/Home/notification_screen.dart';
import 'package:foodninja/Ui/Home/search_screen.dart';

import '../../Const/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              alignment: Alignment.topRight,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/appBarBg.png'), fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Find Your\nFavorite Food',
                          style: kTextStyle.copyWith(fontSize: 30, fontWeight: FontWeight.bold, color: kTitleColor),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: kWhite,
                          child: IconButton(
                              onPressed: () {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const NotificationScreen()),
                                );
                              },
                              icon: const Icon(
                                Icons.notifications_none,
                                color: Colors.redAccent,
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: TextFormField(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SearchScreen()),
                            );
                          },
                          decoration: kInputDecoration.copyWith(
                            hintText: 'What do you want to order?',
                            fillColor: const Color(0xffF9A84D).withOpacity(0.1),
                            filled: true,
                            hintStyle: kTextStyle.copyWith(
                              color: const Color(0xffDA6317),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Color(0xffDA6317),
                            ),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                borderSide: BorderSide.none),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FilterScreen()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xffF9A84D).withOpacity(0.1),
                          ),
                          child: const Icon(
                            Icons.filter_list_alt,
                            color: Color(0xffDA6317),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width / 1.3,
                              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/Promo.png'))),
                            ),
                          );
                        }),
                  ),



                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nearest Restaurant',
                        style: kTextStyle.copyWith(color: kTitleColor, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text('View More', style: kTextStyle.copyWith(color: const Color(0xffFF7C32))),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ProductDetails()),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: kWhite,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'images/ResturantImage.png',
                                        width: 96,
                                        height: 73,
                                      ),
                                      Text(
                                        'Vegan Resto',
                                        style: kTextStyle.copyWith(color: kTitleColor, fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                      Text('12 Mins', style: kTextStyle.copyWith(color: kSubSubTitleColor)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Restaurant',
                        style: kTextStyle.copyWith(color: kTitleColor, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text('View More', style: kTextStyle.copyWith(color: const Color(0xffFF7C32))),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: kWhite,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/RestaurantImage.png',
                                      width: 96,
                                      height: 73,
                                    ),
                                    Text(
                                      'Healthy Food',
                                      style: kTextStyle.copyWith(color: kTitleColor, fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                    Text('8 Mins', style: kTextStyle.copyWith(color: kSubSubTitleColor)),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Menu',
                        style: kTextStyle.copyWith(color: kTitleColor, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text('View More', style: kTextStyle.copyWith(color: const Color(0xffFF7C32))),
                    ],
                  ),
                  SizedBox(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (_, index) {
                          return Card(
                            elevation: 1,
                            child: ListTile(
                              leading: Image.asset(
                                'images/Menu Photo.png',
                                width: 65,
                                height: 65,
                              ),
                              title: Text(
                                'Vegan Resto',
                                style: kTextStyle.copyWith(color: kTitleColor, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text('12 Mins', style: kTextStyle.copyWith(color: kSubSubTitleColor)),
                              trailing:Text('\$15', style: kTextStyle.copyWith(color: kSecondaryColor,fontWeight: FontWeight.bold)),
                            ),
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
