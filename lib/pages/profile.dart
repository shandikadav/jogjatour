import 'package:flutter/material.dart';
import 'package:jogjatour/pages/login_pages.dart';
import '../theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/logo_profile.png',
                    width: 126,
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Guido Augusta',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: blackTextStyle.copyWith(
                            fontSize: 22, fontWeight: semiBold),
                      ),
                      Text(
                        '@GuidoAugusta',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    child: Text(
                      'Edit Profile',
                      style: whiteTextStyle.copyWith(
                        fontSize: 17,
                        fontWeight: semiBold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 8, 130, 149),
                      minimumSize: Size(144, 44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPages()),
                      );
                    },
                    child: Text(
                      'Keluar',
                      style: blackTextStyle.copyWith(
                        fontSize: 17,
                        fontWeight: semiBold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        width: 2,
                        color: Color(0xFFBFBFDB),
                        style: BorderStyle.solid,
                      ),
                      primary: backgroundColor2,
                      minimumSize: Size(144, 44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadowColor: Colors.transparent,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 18.5,
              ),
              NameItem(text1: 'Email'),
              MenuItem(
                text2: 'muhammadguido29@gmail.com',
                image: 'assets/logo_email.png',
              ),
              SizedBox(
                height: 18.5,
              ),
              NameItem(text1: 'Username'),
              MenuItem(
                text2: '@GuidoAugusta',
                image: 'assets/user.png',
              ),
              SizedBox(
                height: 18.5,
              ),
              NameItem(text1: 'Nomor Telepon'),
              MenuItem(
                text2: '089601627749',
                image: 'assets/phone.png',
              ),
              SizedBox(
                height: 18.5,
              ),
              NameItem(text1: 'Nomor Telepon'),
              MenuItem(
                text2: '089601627749',
                image: 'assets/phone.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NameItem extends StatelessWidget {
  String text1;
  NameItem({super.key, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Text(
          text1,
          style: blackTextStyle.copyWith(
            fontSize: 16,
          ),
        )
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  String text2;
  String image;
  MenuItem({super.key, required this.text2, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        color: backgroundColor2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(image),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text2,
                  style: TextStyle(
                    color: Color.fromARGB(255, 131, 130, 130),
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
