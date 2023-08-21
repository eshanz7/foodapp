import 'package:flutter/material.dart';
import 'package:foodapp/constants.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Column(
          children: [
            SizedBox(
              height: getScreenHeight(context) * 0.03,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TopDetailWidget()),
            SizedBox(
              height: getScreenHeight(context) * 0.03,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Meat Cheese \nBurger",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: black),
                    ),
                    Text(
                      "\$12.67",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: black),
                    ),
                  ],
                )),
            SizedBox(
              height: getScreenHeight(context) * 0.03,
            ),
            Expanded(
                child: Container(
              width: getScreenWidth(context),
              decoration:const BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Column(
                children: [
                  SizedBox(
                    height: getScreenHeight(context) * 0.016,
                  ),
                  Container(
                    width: 35,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: const Divider(
                      height: 5,
                      thickness: 5,
                      color: dividerColor2,
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(context) * 0.023,
                  ),
                  Image.asset(
                    'assets/detail_burger.png',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: getScreenHeight(context) * 0.01,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          FoodsWidget(
                            name: 'Meat',
                            cal: '30cal',
                            image: 'assets/meat.png',
                          ),
                          SizedBox(
                            width: getScreenHeight(context) * 0.016,
                          ),
                          FoodsWidget(
                            name: 'Cheese',
                            cal: '10cal',
                            image: 'assets/cheese.png',
                          ),
                          SizedBox(
                            width: getScreenHeight(context) * 0.016,
                          ),
                          FoodsWidget(
                            name: 'Green Leaf',
                            cal: '22cal',
                            image: 'assets/leaf_lettuce.png',
                          ),
                          SizedBox(
                            width: getScreenHeight(context) * 0.016,
                          ),
                          FoodsWidget(
                            name: 'Tomato',
                            cal: '22cal',
                            image: 'assets/tomato.png',
                          ),
                        ],
                      )),
                  SizedBox(
                    height: getScreenHeight(context) * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: getScreenHeight(context) * 0.078,
                      width: getScreenWidth(context),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(60)),

                      child: Row(
                        children: [

                          const SizedBox(width: 6,),
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              color: cardColor2,
                              borderRadius: BorderRadius.circular(60)
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Image.asset('assets/lock.png',height: 18,width: 20),
                          ),

                          const SizedBox(width: 8,),


                          Row(
                            children: const [
                              Icon(Icons.arrow_forward_ios,size: 10,color: black,),
                              Icon(Icons.arrow_forward_ios,size: 10,color: subtextColor,),
                              Icon(Icons.arrow_forward_ios,size: 10,color: subtextColor,),
                            ],
                          ),

                          SizedBox(width: getScreenHeight(context) * 0.05,),

                          const Text("Add To Cart",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: black),textAlign: TextAlign.center,),


                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class FoodsWidget extends StatelessWidget {
  String? image;
  String? name;
  String? cal;

  FoodsWidget({this.image, this.name, this.cal});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 62,
          width: 62,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: white, shape: BoxShape.circle),
          padding: EdgeInsets.all(12),
          child: Image.asset(image!),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          name!,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w500, color: black),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          cal!,
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.w400, color: subtextColor),
        )
      ],
    );
  }
}

class TopDetailWidget extends StatelessWidget {
  const TopDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(color: cardColor3, shape: BoxShape.circle),
          child: Image.asset('assets/flip_arrow.png'),
        ),
        Text(
          "Food Details",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: black),
          textAlign: TextAlign.center,
        ),
        Container(
          height: 50,
          width: 50,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(color: cardColor3, shape: BoxShape.circle),
          child: Image.asset('assets/save.png'),
        )
      ],
    );
  }
}
