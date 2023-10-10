import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../providers/my_provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int index = 0;
  List<String> txt = ['سبحان الله', 'الحمد لله', "الله اكبر"];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Image(
                image: AssetImage(
                  provider.themeCode == ThemeMode.light
                      ? 'assets/images/elsebha.png'
                      : 'assets/images/elsebha_dark.png',
                ),
              ),
            ],
          ),
          Text(
            AppLocalizations.of(context)!.numberOfPraises,
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
                  decoration:  BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: const BorderRadius.all(Radius.circular(25))),
                  child: Center(
                    child: Text('$counter',
                        style: TextStyle(
                          fontFamily: 'MonotypeKoufi',
                          color: Theme.of(context).colorScheme.onBackground,
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
                  if (counter == 34) {
                    counter = 0;
                    index++;
                    if (index == 3) {
                      index = 0;
                    }
                  }
                  setState(() {});
                },
                child: Container(
                  width: 137,
                  height: 51,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
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
