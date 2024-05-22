import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.titile,
    required this.subTitile,
    required this.image,
  });

  final String titile;
  final String subTitile;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          image,
          height: 40,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text(
          titile,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      subtitle: Text(
        subTitile,
        maxLines: 2,
        style: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 12,
        ),
      ),
      trailing: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "•",
            style: TextStyle(fontSize: 50, color: Color(0xffDBB40E)),
          ),
          Text(
            " 10.00AM",
            style: TextStyle(fontSize: 12, color: Color(0xff6B7280)),
          )
        ],
      ),
    );
  }
}
