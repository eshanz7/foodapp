import 'package:flutter/material.dart';
import 'package:foodapp/constants.dart';
import 'package:foodapp/widgets/CartWidget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Column(
          children: [
            SizedBox(
              height: getScreenHeight(context) * 0.035,
            ),
            Expanded(
                child: Stack(
              children: [
                CustomPaint(
                  painter: CartWidget(),
                  child: SizedBox(
                    height: getScreenHeight(context),
                    width: getScreenWidth(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: getScreenHeight(context) * 0.05,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            "My Orders",
                            style: TextStyle(
                                color: white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: getScreenHeight(context) * 0.04,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: 97,
                                    height: getScreenHeight(context) * 0.17,
                                    decoration: BoxDecoration(
                                        color: boxColor,
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                  ),
                                  Positioned(
                                    top: getScreenHeight(context) * 0.01,
                                    child: Image.asset(
                                      'assets/cartBurger.png',
                                      width: getScreenWidth(context) * 0.40,
                                      // fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 18),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Beef Burger",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: white),
                                    ),
                                    const Text(
                                      "Meat Cheese Burger",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: subtextColor),
                                    ),
                                    SizedBox(
                                      height: getScreenHeight(context) * 0.02,
                                    ),
                                    const Text(
                                      "Size : M",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: subtextColor),
                                    ),
                                    SizedBox(
                                      height: getScreenHeight(context) * 0.025,
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Quantity : 1",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: subtextColor),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_down,
                                              color: subtextColor,
                                              size: 12,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Text(
                                          "\$12.67",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: white),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getScreenHeight(context) * 0.03,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 97,
                                  height: getScreenHeight(context) * 0.15,
                                  decoration: const BoxDecoration(
                                      color: boxColor,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(24),
                                          bottomRight: Radius.circular(24))),
                                ),
                                Positioned(
                                  top: getScreenHeight(context) * 0.001,
                                  child: Image.asset(
                                    'assets/cartmiddlemurger.png',
                                    width: 137,
                                    // fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: getScreenHeight(context) * 0.05,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Cheese Bust",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: white),
                                  ),
                                  const Text(
                                    "Meat Cheese Burger",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: subtextColor),
                                  ),
                                  SizedBox(
                                    height: getScreenHeight(context) * 0.02,
                                  ),
                                  const Text(
                                    "Size : M",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: subtextColor),
                                  ),
                                  SizedBox(
                                    height: getScreenHeight(context) * 0.025,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Quantity : 1",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: subtextColor),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                            color: subtextColor,
                                            size: 12,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 24,
                                      ),
                                      Text(
                                        "\$10.67",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: white),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 92,
                                height: getScreenHeight(context) * 0.06,
                                decoration: const BoxDecoration(
                                    color: boxColor,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        bottomLeft: Radius.circular(24))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/Heart.png',height: 24,width: 24,),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Image.asset('assets/Delete.png',height: 24,width: 24,)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: getScreenHeight(context) * 0.04,
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              height: 54,
                              width: getScreenWidth(context),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: boxColor),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Apply Coupon Code',
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 14, horizontal: 20),
                                    filled: true,
                                    suffixIconConstraints: BoxConstraints(
                                        minWidth: 98, minHeight: 42),
                                    suffixIcon: Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        width: 98,
                                        height: 42,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: cardColor2),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Apply",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: black),
                                        ),
                                      ),
                                    ),
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: subtextColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                            )),
                        SizedBox(
                          height: getScreenHeight(context) * 0.04,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Subtotal",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: subtextColor),
                              ),
                              Text(
                                "88.97 US\$",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: subtextColor),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getScreenHeight(context) * 0.01,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Shiping Fee",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: subtextColor),
                              ),
                              Text(
                                "Standard - Fee",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: subtextColor),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getScreenHeight(context) * 0.02,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Estimated Total",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: white),
                              ),
                              Text(
                                "88.97 US\$ + Tax",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getScreenHeight(context) * 0.06,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            height: getScreenHeight(context) * 0.078,
                            width: getScreenWidth(context),
                            decoration: BoxDecoration(
                                color: boxColor,
                                borderRadius: BorderRadius.circular(60)),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 6,
                                ),
                                Container(
                                  height: 50,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: cardColor2,
                                      borderRadius: BorderRadius.circular(60)),
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset('assets/lock.png',
                                      height: 18, width: 20),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                 Row(
                                  children: [
                                    const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 10,
                                      color: subtextColor,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 10,
                                      color: subtextColor.withOpacity(0.7),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 10,
                                      color: subtextColor.withOpacity(0.4),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: getScreenHeight(context) * 0.05,
                                ),
                                const Text(
                                  "Checkout Now",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: getScreenHeight(context) * 0.2,
                  right: getScreenHeight(context) * 0.2,
                  child: Container(
                    width: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: const Divider(
                      height: 5,
                      thickness: 5,
                      color: dividerColor,
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
