import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
        required this.title,
        required this.subtitle,
        required this.image});

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        child: Image(
          image: AssetImage(image),
          height: 50,
          fit: BoxFit.fill,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 12, color: Color(0xff6B7280)),
      ),
      trailing: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Work during",
            style: TextStyle(fontSize: 12, color: Color(0xff6B7280)),
          ),
          Text(
            "5 Years",
            style: TextStyle(fontSize: 12, color: Color(0xff3366FF)),
          ),
        ],
      ),
    );
  }
}