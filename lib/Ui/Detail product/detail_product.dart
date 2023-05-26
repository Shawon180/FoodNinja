import 'package:flutter/material.dart';
import 'package:foodninja/Const/const.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  bool _isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: true,

            leading: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xffDA6317),
                ),
              ),
            ),

            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 200.0,
            flexibleSpace:  FlexibleSpaceBar(

              background: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/PhotoRestaurant.png'),fit: BoxFit.cover)
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
           SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(decoration: kBoxdecortion.copyWith(color: kPrimaryColor.withOpacity(0.1)),child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text('Popular',style: kTextStyle.copyWith(color: kPrimaryColor),),
                     ),),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(decoration: kBoxdecortion.copyWith(color: kPrimaryColor.withOpacity(0.1)),child: const Padding(
                           padding: EdgeInsets.all(8.0),
                           child: Icon(Icons.location_on_rounded,color: kPrimaryColor,),
                         ),),
                         const SizedBox(width: 10,),
                         Container(decoration: kBoxdecortion.copyWith(color: Colors.red.withOpacity(0.1)),child:  Padding(
                           padding: const EdgeInsets.all(8.0),
                           child:  InkWell(
                             onTap: (){
                               setState(() {
                                 _isButtonPressed = !_isButtonPressed;
                               });
                             },
                             child: _isButtonPressed ==true? const Icon(Icons.favorite,color: Colors.red,):  const Icon(
                               Icons.favorite_border,
                               color: Colors.red,
                             ),
                           ),
                         ),),
                       ],
                     ),

                   ],
                 ),
                  
                  const SizedBox(height: 15,),
                  Text('Wijie Bar and Resto',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold,fontSize: 24),),
const SizedBox(height: 10,),

Row(children: [
  const Icon(Icons.location_on_outlined,color: kPrimaryColor,),
  Text('19 km ',style: kTextStyle.copyWith(color: kSubSubTitleColor),),
const SizedBox(width: 10,),
  const Icon(Icons.star_half,color: kPrimaryColor,),
  Text('4,8 Rating',style: kTextStyle.copyWith(color: kSubSubTitleColor),),
],),
                  
                  const SizedBox(height: 10,),
                  
                  const Text('Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .'),


                  const SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular Menu',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),
                      Text('View All',style: kTextStyle.copyWith(color: kSecondaryColor,),),
                    ],
                  ),

                  const SizedBox(height: 15,),

                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_,index){
                      return  Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          width: 147,
                          height: 171,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color:index.isOdd ? kPrimaryColor.withOpacity(0.2): Colors.black12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('images/Spacy.png',width: 71,height: 71,),
                              Text('Spacy fresh crab',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),
                              Text('\$12',style: kTextStyle.copyWith(color: kSubSubTitleColor),),

                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 15,),
                  Text('Testimonials',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),

                  const SizedBox(height: 15,),



                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return  Padding(
                  padding: const EdgeInsets.only(right: 15.0,left: 15,bottom: 10),
                  child: Card(
                    child: ListTile(
                      leading: Image.asset('images/Dianne.png',width: 71,height: 71,fit: BoxFit.cover,),
                      title: const Text('Dianne Russell'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('12 April 2021'),
                          SizedBox(height: 10,),
                          Text('This Is great, So delicious! You Must Here, With Your family . . '),
                        ],
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(22)
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star,color: kPrimaryColor,),
                            Text('5',style: kTextStyle.copyWith(color: kPrimaryColor)),

                          ],
                        ),
                      ),
                    ),
                  )

                );
              },
              childCount: 5,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: kBoxdecortion,
          child: Text('Add To Chart',style: kTextStyle.copyWith(color: kWhite,fontWeight: FontWeight.bold),),
        ),
      ),

    );
  }
}
