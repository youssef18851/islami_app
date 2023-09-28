import 'package:flutter/material.dart';
import 'package:islami_app/theme_data.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          const Image(
            image: AssetImage(
              'assets/images/radio_image.png',
            ),
          ),

          Text(
            'إذاعة القرآن الكريم',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: MyThemeData.secondColor),
          ),

          ImageIcon(
            const AssetImage('assets/images/radio_icon.png',)
            ,size: 150,color: MyThemeData.primaryColor,
          )
        ],
      ),
    );
  }
}
