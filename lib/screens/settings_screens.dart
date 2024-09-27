import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gexpense/widgets/heading_text.dart';

class SettingsScreens extends StatelessWidget {
  const SettingsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          height: 40,
          width: 126,
          decoration: BoxDecoration(
              color: Color(0xffEEF2FF),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/medal-star.png'),
              Text(
                'Upgrade',
                style: TextStyle(fontSize: 16, color: Color(0xff4F46E5)),
              )
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Close',
                style: TextStyle(fontSize: 16, color: Color(0xff4F46E5)),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(),
              Column(
                children: [
                  Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff4F46E5).withOpacity(0.6),
                          radius: 60,
                          backgroundImage: AssetImage('images/Clipped.png'),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset('images/camera.png')),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hey, John',
                    style: TextStyle(
                        fontSize: 32,
                        color: Color(0xff4F46E5),
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '#john3213',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff64748B),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              HeadingText(
                text: 'Account',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/user.svg'),
                circleAvatarbgColors: Color(0xffEEF2FF),
                titel: 'Update Details',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/grid-2.svg'),
                circleAvatarbgColors: Color(0xffEEF2FF),
                titel: 'Category',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/wallet-money.svg'),
                circleAvatarbgColors: Color(0xffFEF9C3),
                titel: 'Budget',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/card-edit.svg'),
                circleAvatarbgColors: Color(0xffFFE5F1),
                titel: 'Payment Methods',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/export.svg'),
                circleAvatarbgColors: Color(0xffEEF2FF),
                titel: 'Export & Import',
              ),
              SizedBox(
                height: 20,
              ),
              HeadingText(
                text: 'App settings',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/setting.svg'),
                circleAvatarbgColors: Color(0xffECFDF3),
                titel: 'Basic Settings',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/notification.svg'),
                circleAvatarbgColors: Color(0xffECFDF3),
                titel: 'Notifications  & sounds',
              ),
              SizedBox(
                height: 20,
              ),
              HeadingText(
                text: 'Security',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/eye-slash.svg'),
                circleAvatarbgColors: Color(0xffFFFAEB),
                titel: 'Lock account',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/lock.svg'),
                circleAvatarbgColors: Color(0xffFFFAEB),
                titel: 'Security',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/repeat.svg'),
                circleAvatarbgColors: Color(0xffFFFAEB),
                titel: 'Sync Data',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/directbox-send.svg'),
                circleAvatarbgColors: Color(0xffFFFAEB),
                titel: 'Transfer Account',
              ),
              SizedBox(
                height: 20,
              ),
              HeadingText(
                text: 'Privacy',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/document-text.svg'),
                circleAvatarbgColors: Color(0xffE9F8FF),
                titel: 'Documents',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/message-question.svg'),
                circleAvatarbgColors: Color(0xffE9F8FF),
                titel: 'Help Center',
              ),
              HeadingText(
                text: 'Danger zone',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/trash.svg'),
                circleAvatarbgColors: Color(0xffFEF3F2),
                titel: 'Delete Account',
              ),
              RowButton(
                icons: SvgPicture.asset('icons/logout.svg'),
                circleAvatarbgColors: Color(0xffFEF3F2),
                titel: 'Log Out',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowButton extends StatelessWidget {
  RowButton(
      {super.key,
      this.icons,
      this.titel,
      this.circleAvatarbgColors,
      this.trailingIcons = null});
  final icons;
  final titel;
  Color? circleAvatarbgColors;
  final trailingIcons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: circleAvatarbgColors,
                radius: 20,
                child: icons,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '$titel',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1E293B)),
              ),
            ],
          ),
          trailingIcons == null
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.chevron_right,
                    size: 16,
                  ))
              : trailingIcons
        ],
      ),
    );
  }
}
