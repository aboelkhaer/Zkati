import 'package:flutter/material.dart';

class SideButton extends StatelessWidget {
  final Icon? icon;
  final VoidCallback? onTap;
  final String? title;
  final BorderRadius? borderRadius;
  final Color color;
  const SideButton({
    Key? key,
    this.icon,
    this.onTap,
    this.title,
    this.borderRadius,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: const Color(0xFFAF8EFF),
        onTap: onTap,
        borderRadius: borderRadius,
        child: Container(
          height: (MediaQuery.of(context).size.height / 2.5) / 2,
          width: MediaQuery.of(context).size.width * 0.18,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon!,
              Text(
                title!,
                style: TextStyle(
                  color: color,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
