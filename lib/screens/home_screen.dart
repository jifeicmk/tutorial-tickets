import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../base/res/media.dart';
import '../base/res/styles/app_styles.dart';

// 首页
class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppStyles.bgColor,
      // 展示一个列表
      body: ListView(
        children: [
          // 顶部容器
          const SizedBox(height: 40,),
          Container(
            // 水平方向padding
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // 顶部的行
                Row(
                  // 使行中的子widget靠左靠右排列
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 左边的列
                    Column(
                      // 使列中的子widget靠左排列
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //早上好
                        Text("Good morning",style: AppStyles.headingStyle3,),
                        const SizedBox(height: 5,),
                        //预订机票
                        Text("Book Tickets",style: AppStyles.headingStyle1,),
                      ],
                    ),
                    // 右边的容器
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
                const SizedBox(height: 25,),
                // 搜索框
                Container(
                  // 装饰
                  decoration: BoxDecoration(
                    // 圆角
                    borderRadius: BorderRadius.circular(10),
                    // 颜色
                    color: Colors.white
                  ),
                  //padding
                  padding: const EdgeInsets.all(12),
                  //行
                  child: Row(
                    children: [
                      // 搜索图标
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                      // 搜索文本
                      Text("Search",style: AppStyles.headingStyle4,)
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
              ],
            ),
          )
        ],
      ),
    );
  }
}