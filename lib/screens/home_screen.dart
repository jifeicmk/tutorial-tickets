import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tickets/base/widgets/app_double_text.dart';
import 'package:tickets/base/widgets/ticket_view.dart';
import '../base/res/media.dart';
import '../base/res/styles/app_styles.dart';
import '../base/utils/all_json.dart';

// 首页
class Home_Screen extends StatelessWidget {

  const Home_Screen({super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headingStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headingStyle1,
                        ),
                      ],
                    ),
                    Container(
                      // 容器的高度和宽度
                      height: 50,
                      width: 50,
                      // 装饰
                      decoration: BoxDecoration(
                        // 圆角
                        borderRadius: BorderRadius.circular(10),
                        // 颜色
                        color: Colors.red,
                        // 图片
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: AppStyles.headingStyle0,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const AppDoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "View all",
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // take 5 items or items 2
                      children: ticketList
                          .take(2)
                          .map((singleTicket) =>
                              TicketView(ticket: singleTicket))
                          .toList(),
                    )),
                const SizedBox(
                  height: 40,
                ),
                const AppDoubleText(
                  bigText: "Hotels",
                  smallText: "View all",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
