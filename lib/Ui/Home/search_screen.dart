import 'package:flutter/material.dart';

import '../../Const/const.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: TextFormField(
                          onTap: (){},
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

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
