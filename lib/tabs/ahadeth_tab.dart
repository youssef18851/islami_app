import 'package:flutter/material.dart';
import 'package:islami_app/theme_data.dart';

class AhadethTab extends StatelessWidget {
  const AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/images/ahadeth_image.png',),
          ),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),
          Column(
            children: [
              Text(
                'الاحاديث',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: MyThemeData.secondColor),
              ),
            ],
          ),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),

        ],
      ),
    );
  }
}
