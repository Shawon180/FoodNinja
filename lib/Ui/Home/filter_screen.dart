import 'package:flutter/material.dart';

import '../../Const/const.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<String> typeList = ['Restaurant', 'Menu'];
  String? selectTypeList;
  List<String> locationList = ['1 Km', '>10 Km', '<10 Km'];
  String? selectLocationList;

  List<String> foodList = ['Cake', 'Soup', 'Main Course', 'Appetizer', 'Dessert'];
  String? selectFoodList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          decoration: kBoxdecortion,
          child: Text(
            'Search',
            style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              onPressed: () {},
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    onTap: () {},
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
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Type',
                    style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                        itemCount: typeList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectTypeList = typeList[index];
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: selectTypeList == typeList[index]
                                    ? BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: const Color(0xffF9A84D).withOpacity(0.1),
                                      )
                                    : BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(typeList[index], style: kTextStyle.copyWith(color: kSecondaryColor, fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  Text(
                    'Location',
                    style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                        itemCount: locationList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectLocationList = locationList[index];
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: selectLocationList == locationList[index]
                                    ? BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: const Color(0xffF9A84D).withOpacity(0.1),
                                      )
                                    : BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(locationList[index], style: kTextStyle.copyWith(color: kSecondaryColor, fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Food',
                    style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                        itemCount: foodList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectFoodList = foodList[index];
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: selectFoodList == foodList[index]
                                    ? BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: const Color(0xffF9A84D).withOpacity(0.1),
                                      )
                                    : BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(foodList[index], style: kTextStyle.copyWith(color: kSecondaryColor, fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                      child: selectTypeList == typeList[0]
                          ? SizedBox(
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
                                                'images/Menu Photo.png',
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
                                    );
                                  }),
                            )
                          : SizedBox(
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
                                    );
                                  }),
                            )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
