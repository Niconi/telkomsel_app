import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:telkomsel_app/screens/home/components/card_info_home_1.dart';
import 'package:telkomsel_app/screens/home/components/card_info_home_2.dart';
import 'package:telkomsel_app/screens/home/components/whats_new_card.dart';
import 'package:telkomsel_app/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cards = [CardInfoHome(), CardInfoHome2()];
  int currentIndex = 0;
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

    Widget indicator() {
      return Container(
        width: 16,
        height: 4,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(4),
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
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: cards.asMap().entries.map((entry) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: currentIndex == entry.key
                    ? indicator()
                    : Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: whiteColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
              );
            }).toList(),
          ),
        ],
      );
    }

    Widget recommendedForYou() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended for You', style: extraBoldText18),
                  Text(
                    'See All',
                    style: regulerText14.copyWith(color: blueColor),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                recommendedCard(
                  'Kuota Ketengan Unlimited',
                  '29 Jun 2021 13:08:07',
                  'Rp 4,200',
                ),
                recommendedCard(
                  'Kuota Ketengan Belajar',
                  '30 Jun 2021 13:05:10',
                  'Rp 5,500',
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),

        child: Column(
          children: [SizedBox(height: 24), recommendedForYou(), whatsNewCard()],
        ),
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
        child: ListView(
          children: [header(), cardInfo(), SizedBox(height: 24), content()],
        ),
      ),
    );
  }

  Container recommendedCard(String title, String date, String price) {
    return Container(
      margin: EdgeInsets.only(bottom: 24, left: 16, right: 8),
      height: 130,
      width: 284,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        color: whiteColor,
        boxShadow: [
          BoxShadow(color: greyColor, blurRadius: 1, offset: Offset(0, 1)),
        ],
      ),
      child: Stack(
        children: [
          Container(
            height: 20,
            width: 96,
            decoration: BoxDecoration(
              color: bluePurpleColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 2),
            child: Text(
              'Buy it again',
              style: mediumText10.copyWith(color: whiteColor),
            ),
          ),
          Positioned(
            top: 26,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: mediumText10.copyWith(color: primaryTextColor),
                ),
                SizedBox(height: 4),
                Text(date, style: regulerText10.copyWith(color: darkGreyColor)),
                SizedBox(height: 12),
                Text(price, style: boldText15.copyWith(color: redColor)),
              ],
            ),
          ),
          Positioned(
            right: 10,
            top: 15,
            child: Image(
              image: AssetImage('assets/icons/Icon-box-play.png'),
              width: 45,
              height: 45,
            ),
          ),
        ],
      ),
    );
  }
}
