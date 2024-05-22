import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class JobsqueText extends StatelessWidget {
  final fontSize ;
  final widthIcon;
  final heightIcon;
  const JobsqueText({
    super.key, required this.fontSize, required this.widthIcon, required this.heightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'J',
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: SvgPicture.asset(
            'assets/image/splash_image/img_search.svg',
            width: widthIcon,
            height: heightIcon,
          ),
        ),
        Center(
          child: Text(
            'BSQUE',
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
