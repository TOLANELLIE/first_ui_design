import 'package:flutter/material.dart';
import '../palette.dart';

class Rouned extends StatelessWidget {
  const Rouned({
    Key? key,
    required this.buttomname,
  }) : super(key: key);

  final String buttomname;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kblue,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttomname,
          style: kbodytext.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
