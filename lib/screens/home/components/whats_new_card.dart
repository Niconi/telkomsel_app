import 'package:flutter/material.dart';
import 'package:telkomsel_app/themes.dart';

Widget whatsNewCard() {
  Widget buildItem(String imagePath, String tag, String title) {
    return Container(
      width: 320,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.08),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              width: 320,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: pinkColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    tag,
                    style: regulerText10.copyWith(color: primaryTextColor),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  title,
                  style: boldText15.copyWith(color: primaryTextColor),
                ),
                SizedBox(height: 8),
                Text(
                  'See all',
                  style: regulerText14.copyWith(color: blueColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 16),
        child: Text(
          'What\'s New?',
          style: boldText15.copyWith(color: primaryTextColor),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            buildItem(
              'assets/images/video-subscription.png',
              'Package',
              'Video Digital Subscription',
            ),
            buildItem('assets/images/poin-image.png', 'POIN', 'Undi-undi Hepi'),
          ],
        ),
      ),
    ],
  );
}
