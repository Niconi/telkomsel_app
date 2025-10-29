import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';
import 'package:telkomsel_app/screens/home/components/card_info_home_1.dart';
import 'package:telkomsel_app/screens/home/components/card_info_home_2.dart';
import 'package:telkomsel_app/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cards = [CardInfoHome(), CardInfoHome2()];
  @override
  Widget build(BuildContext context) {
    Widget headerContent(String icon, String text) {
      return Container(
        margin: EdgeInsets.only(top: 16, right: 12),
        padding: EdgeInsets.fromLTRB(8, 6, 2, 6),
        decoration: BoxDecoration(
          color: darkRedColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            Image.asset(icon, width: 12),
            SizedBox(width: 10),
            Text(text, style: boldText13.copyWith(color: whiteColor)),
            Icon(Icons.chevron_right_rounded, color: whiteColor),
          ],
        ),
      );
    }

    Widget cardInfo() {
      return Column(
        children: [
          CarouselSlider(
            items: cards.map<Widget>((card) => Container(child: card)).toList(),
            options: CarouselOptions(
              height: 333,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 0,
              viewportFraction: 0.9,
            ),
          ),
        ],
      );
    }

    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Hi James', style: boldText15.copyWith(color: whiteColor)),
                Spacer(),
                Icon(Icons.qr_code_rounded, color: whiteColor, size: 28),
                SizedBox(width: 12),
                Image.asset('assets/icons/icon-email.png', width: 32),
                SizedBox(width: 12),
                Image.asset('assets/icons/icon-help.png', width: 26),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text(
                  '082212345678',
                  style: boldText15.copyWith(color: whiteColor),
                ),
                SizedBox(width: 8),
                Image.asset('assets/icons/icon-add.png', width: 14),
              ],
            ),
            Row(
              children: [
                headerContent('assets/icons/icon-love.png', '19 POIN'),
                headerContent('assets/icons/icon-star.png', 'Daily Check In'),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
            colors: [redColor, redColor, yellowColor],
            stops: [0.1, 0.8, 1.0],
          ),
        ),
        child: ListView(children: [header(), cardInfo()]),
      ),
    );
  }
}
