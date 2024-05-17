import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/core/constants/routers.dart';
import 'package:food/core/resource/colors.dart';
import 'package:food/core/resource/fonts.dart';
import 'widgets/item_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Divider divider = const Divider(
      color: Color(0xFFEDF0F2),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 16, bottom: 24),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/ic_avatar.png',
                    width: 56,
                    height: 56,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cameron Williamson',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontSize: 16),
                      ),
                      Text(
                        '+628166349503',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              color: Color(0xffEDF0F2),
              thickness: 8,
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffE5F9FE)),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff0BB8E4),
                        borderRadius: BorderRadius.circular(8)),
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.only(right: 8),
                    child: SvgPicture.asset(
                      'assets/icons/ic_wallet.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yummie Balance',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontSize: 16),
                      ),
                      Text(
                        '200',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const Spacer(),
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: kPrimaryColor,
                    child: Text(
                      'TOP UP',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontSize: 14, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Personal',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ProfileItem(
                label: 'Account',
                ic: 'assets/icons/ic_user.svg',
                action: () {
                  Navigator.pushNamed(context, accountRoute);
                }),
            divider,
            ProfileItem(
                label: 'Saved Payment',
                ic: 'assets/icons/ic_credit_card.svg',
                action: () {}),
            divider,
            ProfileItem(
                label: 'Wishlist',
                ic: 'assets/icons/ic_heart.svg',
                action: () {
                  Navigator.pushNamed(context, wishlistRoute);
                }),
            divider,
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'General',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ProfileItem(
                label: 'Help & Support',
                ic: 'assets/icons/ic_question.svg',
                action: () {}),
            divider,
            ProfileItem(
                label: 'Privacy & Policy',
                ic: 'assets/icons/ic_security.svg',
                action: () {}),
            divider,
            ProfileItem(
                label: 'Term & Condition',
                ic: 'assets/icons/ic_term_condition.svg',
                action: () {}),
            divider,
            ProfileItem(
                label: 'Logout',
                ic: 'assets/icons/ic_logout.svg',
                action: () {}),
          ],
        ),
      ),
    );
  }
}
