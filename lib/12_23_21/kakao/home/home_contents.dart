import 'package:flutter/material.dart';

class HomeContentsScreen extends StatefulWidget {
  const HomeContentsScreen({super.key});

  @override
  State<HomeContentsScreen> createState() => _HomeContentsScreenState();
}

class _HomeContentsScreenState extends State<HomeContentsScreen> {
  Widget _buildItem(String asset, String title) {
    return Column(
      children: [
        Image.asset(
          asset,
          width: 56,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildAdCard({
    Color backGroundColor = Colors.white,
    required String mainMsg,
    Color mainMsgColor = Colors.black,
    required String subMsg,
    Color subMsgColor = Colors.black,
    required String imgUrl,
  }) {
    return Card(
        color: backGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
          child: Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainMsg,
                    style: TextStyle(fontSize: 16, color: mainMsgColor),
                  ),
                  Text(
                    subMsg,
                    style: TextStyle(fontSize: 12, color: subMsgColor),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Image.asset(imgUrl),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildItem('assets/images/taxi.png', '택시'),
            _buildItem('assets/images/car.png', '블랙'),
            _buildItem('assets/images/bicycle.png', '바이크'),
            _buildItem('assets/images/steering-wheel.png', '대리'),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildItem('assets/images/parking-lot.png', '주차'),
            _buildItem('assets/images/team.png', '카풀'),
            _buildItem('assets/images/3d-navigation.png', '내비'),
            const SizedBox(width: 56),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            _buildAdCard(
              backGroundColor: const Color(0xff96C355),
              mainMsg: '그러게 일찍 좀 일어나지 그랬어',
              mainMsgColor: Colors.white,
              subMsg: '기왕 늦은거 편하게 택시타고 가자',
              subMsgColor: Colors.black,
              imgUrl: 'assets/images/character.png',
            ),
          ],
        )
      ],
    );
  }
}
