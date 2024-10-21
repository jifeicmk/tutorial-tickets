import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tickets/base/res/styles/app_styles.dart';
import 'package:tickets/base/utils/all_json.dart';
import 'package:tickets/base/widgets/app_column_text_layout.dart';
import 'package:tickets/base/widgets/app_layoutbuilder_widget.dart';
import 'package:tickets/base/widgets/big_circle.dart';
import 'package:tickets/base/widgets/big_dot.dart';
import 'package:tickets/base/widgets/text_style_fourth.dart';
import 'package:tickets/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      //顶栏左边文字
                      TextStyleThird(
                        text: ticket['from']['code'],
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      //中间的内容
                      Expanded(
                          child: Stack(
                        children: [
                          // 中间的虚线
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDivider: 6,
                              width: 3,
                            ),
                          ),
                          //中间的飞机？
                          Center(
                              child: Transform.rotate(
                            angle: 1.57,
                            child: const Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            ),
                          )),
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      //顶栏右边文字
                      TextStyleThird(
                        text: ticket['to']['code'],
                      ),
                    ],
                  ),
                  // 蓝色下半栏三个文字
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket['from']['name'],
                          )),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket['flying_time'],
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket['to']['name'],
                          align: TextAlign.end,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // 中间虚线和左右半圆
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 15,
                    width: 6,
                  )),
                  BigCircle(isRight: true),
                ],
              ),
            ),
            // 下半栏的盒子和内容
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21)),
              ),
              // TextStyleFourth封装了底栏三块左中右的文字 使用Column的 space隔开
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: ticket['date'],
                        bottomText: "DATE",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: ticket['departure_time'],
                        bottomText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: ticket['number'].toString(),
                        bottomText: "Number",
                        alignment: CrossAxisAlignment.end,
                      ),
                      // Expanded(child: Container()),
                      // Text(
                      //   "08:00 AM",
                      //   style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      // ),
                      // Expanded(child: Container()),
                      // Text(
                      //   "23",
                      //   style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      // )
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     Text(
                  //       "Date",
                  //       style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "Departure time",
                  //       style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "Number",
                  //       style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
