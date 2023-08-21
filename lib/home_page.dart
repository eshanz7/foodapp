import 'package:flutter/material.dart';
import 'package:foodapp/cart_page.dart';
import 'package:foodapp/detail_page.dart';
import 'package:foodapp/widgets/BottomCustomPainter.dart';
import 'package:foodapp/widgets/BottomWidget.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // I left this one empty so index issues does not occur as we dont have icon with All

  List<String> tabsNames = ['All', 'Drink', 'Burger', 'Cake', 'Pizza'];
  List<String> tabsAssets = [
    '',
    'assets/drink.png',
    'assets/sburger.png',
    'assets/Cake.png',
    'assets/Pizza.png'
  ];

  int currentIndex = 0;

  PageController? pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: currentIndex);
  }

  // i made this shipe using flutter shape maker online website it has generated that code so
  // i can use it in CustomPaint

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        bottomNavigationBar: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
          },
          child:  BottomWidget(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: getScreenHeight(context) * 0.04,
            ),
            const TopWidget(),
            SizedBox(
              height: getScreenHeight(context) * 0.03,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Order Your \nFavorite Food",
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.w700, color: black),
              ),
            ),
            SizedBox(
              height: getScreenHeight(context) * 0.026,
            ),
            SizedBox(
              height: 44,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 30, bottom: 0),
                  itemBuilder: (_, index) {
                    if (index == 0) {
                      return Container(
                        height: 44,
                        width: 44,
                        alignment: Alignment.center,
                        decoration:
                            const BoxDecoration(color: black, shape: BoxShape.circle),
                        child: Text(
                          tabsNames[index],
                          style: const TextStyle(
                              fontSize: 14,
                              color: white,
                              fontWeight: FontWeight.w500),
                        ),
                      );
                    } else {
                      return Container(
                        height: 44,
                        width: 106,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: cardColor3,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Image.asset(
                                tabsAssets[index],
                                height: 25,
                                width: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              tabsNames[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  color: index == 1 || index == 3
                                      ? drinkText
                                      : index == 4
                                          ? pizzaText
                                          : lockCardColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  separatorBuilder: (_, index) {
                    return const SizedBox(
                      width: 12,
                    );
                  },
                  itemCount: tabsNames.length),
            ),
            SizedBox(
              height: getScreenHeight(context) * 0.026,
            ),
            Expanded(
                child: PageView.builder(
                    itemCount: tabsNames.length,
                    controller: pageController,
                    itemBuilder: (_, index) {
                      return
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage()));
                            },
                            child:
                        ListView.separated(
                          padding: const EdgeInsets.only(left: 30),
                          itemBuilder: (_, index) {
                            return Stack(
                              children: [
                                SizedBox(
                                  height: getScreenHeight(context) * 0.47,
                                  width: getScreenWidth(context) * 0.75,
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Container(
                                          height: getScreenHeight(context) * 0.47,
                                          width: getScreenWidth(context) * 0.70,
                                          decoration: BoxDecoration(
                                            color: index == 1
                                                ? homeCardColor
                                                : index == 0
                                                ? homeCardColor2
                                                : homeCardColor1,
                                            borderRadius:
                                            BorderRadius.circular(60),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          top: 25,
                                          left: 0,
                                          right: 0,
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'assets/home_burger.png',
                                                fit: BoxFit.cover,
                                              ),
                                              SizedBox(
                                                height: getScreenHeight(context) *
                                                    0.020,
                                              ),
                                              const Text(
                                                "Burgers",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: getScreenHeight(context) * 0.012,
                                              ),
                                              const Text(
                                                "517 Items",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: subtextColor2),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                          separatorBuilder: (_, index) {
                            return const SizedBox(
                              width: 10,
                            );
                          },
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                        ));
                    }))
          ],
        ),
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: cardColor3),
            padding: const EdgeInsets.all(13),
            child: Image.asset(
              'assets/dots.png',
            ),
          ),
          Image.asset(
            'assets/profile.png',
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

// Lets Go through
