import 'package:flutter/material.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/sura_model.dart';
import 'package:islami_app/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class QuranTab extends StatelessWidget {
  static List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              'assets/images/quran_image.png',
            ),
          ),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),
          Column(
            children: [
              Text(
                AppLocalizations.of(context)!.suraNames,
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
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                      color: MyThemeData.primaryColor,
                      thickness: 1,
                      endIndent: 40,
                      indent: 40,
                    ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SuraDetails.routeName,
                          arguments: SuraModel(suraNames[index], index));
                    },
                    child: Center(
                        child: Text(
                      suraNames[index],
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: MyThemeData.secondColor),
                    )),
                  );
                },
                itemCount: suraNames.length),
          )
        ],
      ),
    );
  }
}
