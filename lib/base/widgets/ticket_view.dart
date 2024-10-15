import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tickets/base/res/styles/app_styles.dart';
import 'package:tickets/base/widgets/app_layoutbuilder_widget.dart';
import 'package:tickets/base/widgets/big_circle.dart';
import 'package:tickets/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21), topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(randomDivider: 6),
                          ),
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
                      Text(
                        "LDN",
                        style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "New-York",
                        style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M",
                        style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  const BigCircle(isRight: false),
                  Expanded(child: Container()),
                  const BigCircle(isRight: true),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21), bottomLeft: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 24,
                                child: AppLayoutBuilderWidget(randomDivider: 6),
                              ),
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
                      Text(
                        "LDN",
                        style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "New-York",
                        style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M",
                        style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style: AppStyles.headingStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
