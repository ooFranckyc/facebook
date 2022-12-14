import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class AwesomeInterractIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;
  const AwesomeInterractIcon(
      {Key? key,
      required this.icon,
      required this.title,
      required this.color,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Bounce(
        duration: const Duration(milliseconds: 180),
        onPressed: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 35, color: color),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(
                color: AppStore.colorGrey,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
