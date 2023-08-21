import 'package:flutter/material.dart';

import '../constants.dart';
import 'BottomCustomPainter.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: BottomCustomPainter(),
          child: Container(
            height: getScreenHeight(context) * 0.1,
            width: getScreenWidth(context),
          ),
        ),
        Positioned(
            left: 30,
            right: 30,
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: white, shape: BoxShape.circle),
                      child: const Text(
                        "3",
                        style: TextStyle(
                            fontSize: 16,
                            color: black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Cart",
                          style: TextStyle(
                              fontSize: 18,
                              color: white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "3 Items",
                          style: TextStyle(
                              fontSize: 14,
                              color: subtextColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: cardColor3, shape: BoxShape.circle),
                      child: Image.asset('assets/kindpng_423366 3.png'),
                    ),
                    Positioned(
                      right: 22,
                      child: Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: cardColor2, shape: BoxShape.circle),
                        child: Image.asset('assets/kindpng_423366 2.png'),
                      ),
                    ),
                    Positioned(
                      right: 45,
                      child: Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: cardColor, shape: BoxShape.circle),
                        child: Image.asset('assets/kindpng_423366 1.png'),
                      ),
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }
}
