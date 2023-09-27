import 'package:flutter/material.dart';
import 'package:islami_app/theme_data.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int index=0;
  List<String>txt=['سبحان الله','الحمد لله',"الله اكبر"];



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Column(
            children: [
              Image(
                image: AssetImage(
                  'assets/images/elsebha.png',
                ),
              ),
            ],
          ),
          Text(
            'عدد السبيحات',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.w100,
                ),
          ),
          Column(
            children: [
              Container(
                  width: 69,
                  height: 81,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(80, 183, 147, 95),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Center(
                    child: Text('$counter',
                        style: TextStyle(
                          fontFamily: 'MonotypeKoufi',
                          color: MyThemeData.secondColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  counter++;
                  if(counter==34){
                    counter=0;
                    index++;
                    if(index==3){
                      index=0;
                    }

                  }
                  setState(() {

                  });
                },
                child: Container(
                  width: 137,
                  height: 51,
                  decoration: BoxDecoration(
                      color: MyThemeData.primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(25))),
                  child: Center(
                      child: Text(
                    txt[index],
                    style: const TextStyle(
                      fontFamily: 'MonotypeKoufi',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
