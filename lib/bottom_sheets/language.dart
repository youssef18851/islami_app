import 'package:flutter/material.dart';
import 'package:islami_app/theme_data.dart';

class LanguageBottom extends StatelessWidget {
  LanguageBottom({super.key});
  bool isEnglish = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .59,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Eglish'),
              isEnglish == true
                  ? Icon(
                      Icons.check_circle,
                      size: 30,
                      color: MyThemeData.primaryColor,
                    )
                  : const SizedBox.shrink()
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Arabic'),
              isEnglish == true
                  ? const SizedBox.shrink()
                  : Icon(
                      Icons.check_circle,
                      size: 30,
                      color: MyThemeData.secondColor,
                    )
            ],
          )
        ],
      ),
    );
  }
}
