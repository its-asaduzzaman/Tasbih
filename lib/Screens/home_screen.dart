import 'package:flutter/material.dart';

import '../utils/app_style.dart';
import '../widgets/dua_card.dart';
import '../utils/app_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/Dua.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: size.width,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(.2),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Text(
                  'পাঁচ ওয়াক্ত নামাজের তাসবিহ ও দোয়া',
                  style: Styles.headLineStyle1,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        DuaCard(
                          namazText: 'ফজর',
                          onubadText: 'তিনি চির জীবিত ও চিরস্থায়ী',
                          arbiText: 'هوال هايول قيوم',
                          banglaText: 'হুয়াল হাইয়্যুল কাইয়্যুম',
                        ),
                        DuaCard(
                          namazText: 'যোহর',
                          onubadText: 'তিনি শ্রেষ্ট্রতর অতি মহান',
                          arbiText: 'هوال عليول عظيم',
                          banglaText: 'হুয়াল আলিইয়্যাল আজীম',
                        ),
                        DuaCard(
                          namazText: 'আছর',
                          onubadText: 'তিনি কৃপাময় ও করুনা নিধান',
                          arbiText: 'هوار رحمانور رحيم',
                          banglaText: 'হুয়ার রাহমানুর রাহীম',
                        ),
                        DuaCard(
                          namazText: 'মাগরিব',
                          onubadText: 'তিনি মার্জনাকারী ও করুণাময়',
                          arbiText: 'هوال غفور رحيم',
                          banglaText: 'হুয়াল গাফুরুর রাহীম',
                        ),
                        DuaCard(
                          namazText: 'ইশা',
                          onubadText: 'তিনি পাক ও অতিশয় সতর্কশীল',
                          arbiText: 'هوالاتفول خبير',
                          banglaText: 'হুয়াল্ লাতিফুল খাবীর',
                        ),
                        DuaCard(
                          namazText: 'তাশাহহুদ',
                          onubadText:
                              "শ্রদ্ধা এবং নামাজ ও ভালো কাজ [সব কিছু] আল্লাহর জন্য। হে নবি, আপনার উপর শান্তি বর্ষিত হোক এবং সেইসাথে আল্লাহর দয়া ও তাঁর আশীর্বাদ। আমাদের ও আল্লাহর অনুগত সৎ বান্দাদের উপর শান্তি বর্ষিত হোক। আমি সাক্ষ্য দিচ্ছি যে, আল্লাহ ব্যতীত কোনো উপাস্য নেই এবং আমি [আরও] সাক্ষ্য দিচ্ছি যে মুহাম্মাদ তাঁর বান্দা ও বার্তাবাহক (রাসুল)",
                          arbiText:
                              'ٱلتَّحِيَّاتُ لِلَّٰهِ وَٱلصَّلَوَاتُ وَٱلطَّيِّبَاتُ، ٱلسَّلَامُ عَلَيْكَ أَيُّهَا ٱلنَّبِيُّ وَرَحْمَةُ ٱللَّٰهِ وَبَرَكَاتُهُ، ٱلسَّلَامُ عَلَيْنَا وَعَلَىٰ عِبَادِ ٱللَّٰهِ ٱلصَّالِحِينَ، أَشْهَدُ أَنْ لَا إِلَٰهَ إِلَّا ٱللَّٰهُ، وَأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ.',
                          banglaText:
                              "আত্-তাহিইয়াতু লি-ল্‌লাহি ওয়া-স্‌-সালাওয়াতু ওয়া-ত্‌-তাইয়িবাতু। আস্‌-সালামু ʿআলাইকা ʾআইয়ুহা ন্‌-নাবিইয়ু ওয়া রাহ্‌মাতু-ল্‌লাহি ওয়া বারাকাতুহ্‌। আস্‌-সালামু ʿআলাইনা ওয়া ʿআলা ʿইবাদি-ল্‌লাহি স্‌-সালিহিন। ʾআশ্‌হাদু ʾআ[(ন)ল্‌] লা ʾইলাহা ইল্‌লা-ল্‌লাহু ওয়া ʾআশ্‌হাদু ʾআন্‌না মুহাম্‌মাদান্‌ ʿআব্‌দুহু ওয়া রাসুলুহ্‌।",
                        ),
                        DuaCard(
                          namazText: 'দুরুদ',
                          onubadText:
                              "আল্লাহ, মুহাম্মাদ ও মুহাম্মাদের পরিবারকে পবিত্রতা দান করুন, যেভাবে আপনি ইব্রাহিম ও ইব্রাহিমের পরিবারকে পবিত্র করেছেন। নিশ্চয়ই আপনি প্রশংসনীয় ও মহিমান্বিত। আল্লাহ, মুহাম্মাদ ও মুহাম্মাদের পরিবারকে আশীর্বাদ দান করুন, যেভাবে আপনি ইব্রাহিম ও ইব্রাহিমের পরিবারকে আশীর্বাদ দিয়েছেন। নিশ্চয়ই আপনি প্রশংসনীয় ও মহিমান্বিত।",
                          arbiText:
                              'ٱللَّٰهُمَّ صَلِّ عَلَىٰ مُحَمَّدٍ وَعَلَىٰ آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَىٰ إِبْرَاهِيمَ وَعَلَىٰ آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ ٱللَّٰهُمَّ بَارِكْ عَلَىٰ مُحَمَّدٍ وَعَلَىٰ آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَىٰ إِبْرَاهِيمَ وَعَلَىٰ آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ',
                          banglaText:
                              "আল্‌লাহুম্‌মা সাল্‌লি ʿআলা মুহাম্‌মাদিন্‌ ওয়া ʿআলা ʾআলি মুহাম্‌মাদিন্‌ কামা সাল্‌লাইতা ʿআলা ʾইব্‌রাহিমা ওয়া ʿআলা ʾআলি ʾইব্‌রাহিমা ʾইন্‌নাকা হামিদুন্ মাজিদুন্‌ ʾআল্‌লাহুম্‌মা বারিক্‌ ʿআলা মুহাম্‌মাদিন্‌ ওয়া ʿআলা ʾআলি মুহাম্‌মাদিন্‌ কামা বারাক্‌তা ʿআলা ʾইব্‌রাহিমা ওয়া ʿআলা ʾআলি ʾইব্‌রাহিমা ʾইন্‌নাকা হামিদুন্ মাজিদুন্‌",
                        ),
                        DuaCard(
                          namazText: 'মাছুরা',
                          onubadText:
                              "হে আল্লাহ! নিশ্চয় আমি আমার উপর অত্যধিক অত্যাচার করেছি এবং তুমি ব্যতিত পাপ ক্ষমা করার কেউ নেই। সুতরাং তুমি আমাকে ক্ষমা করে দাও। ক্ষমা একমাত্র তোমার পক্ষ থেকে হয়ে থাকে। আমার প্রতি রহম কর। নিশ্চয়ই তুমি ক্ষমাশীল ও দয়ালু।",
                          arbiText:
                              'اللَّهُمَّ إِنِّي ظَلَمْتُ نَفْسِي ظُلْمًا كثِيرًا، وَلَا يَغْفِرُ الذُّنُوْبَ إِلاَّ أَنْتَ، فَاغْفِر لِي مغْفِرَةً مِن عِنْدِكَ، وَارْحَمْنِي، إِنَّكَ أَنْتَ الْغَفور الرَّحِيم',
                          banglaText:
                              "আল্লাহুম্মা ইন্নি জালামতু নাফসি জুলমান কাছিরাও ওয়া লা ইয়াগফিরুজ জুনুবা ইল্লা আংতা ফাগফিরলি মাগফিরাতাম মিন্ ইন্দিকা ওয়ার হামনি ইন্নাকা আংতাল গাফুরুর রাহিম।",
                        ),
                        DuaCard(
                          namazText: 'কুনুত',
                          onubadText:
                              'হে আল্লাহ আমরা তোমারই সাহায্য চাই, তোমারই নিকট ক্ষমা চাই, তোমারই প্রতি ঈমান রাখি, তোমারই ওপর ভরসা করি এবং সকল কিছু তোমার দিকে ন্যস্ত করি। আমরা তোমার কৃতজ্ঞ হয়ে চলি অকৃতজ্ঞ হই না, এবং যারা তোমার অবাধ্য হয় তাদের থেকে সম্পর্ক ছিন্ন করে তাদেরকে পরিত্যাগ করি। হে আল্লাহ আমরা তোমারই দাসত্ব করি তোমারই জন্য নামায পড়ি এবং তোমাকেই সিজদাহ করি, আমরা তোমারই দিকে দৌড়াই ও এগিয়ে চলি। আমরা তোমারই রহমত, আশা করি এবং তোমার আযাবকে ভয় করি আর তোমার আযাবতো কাফেরদের জন্যই র্নিধারিত।',
                          arbiText:
                              'اَللَّهُمَّ اِنَّا نَسْتَعِيْنُكَ وَنَسْتَغْفِرُكَ وَنُؤْمِنُ بِكَ وَنَتَوَكَّلُ عَلَيْكَ وَنُثْنِىْ عَلَيْكَ الْخَيْرَ وَنَشْكُرُكَ وَلاَ نَكْفُرُكَ وَنَخْلَعُ وَنَتْرُكُ مَنْ يَّفْجُرُكَ-اَللَّهُمَّ اِيَّاكَ نَعْبُدُ وَلَكَ نُصَلِّىْ وَنَسْجُدُ وَاِلَيْكَ نَسْعَى وَنَحْفِدُ وَنَرْجُوْ رَحْمَتَكَ وَنَخْشَى عَذَابَكَ اِنَّ عَذَابَكَ بِالْكُفَّارِ مُلْحِقٌ',
                          banglaText:
                              "আল্লাহুম্মা ইন্না নাস্তাঈনুকা, ওয়া নাস্তাগফিরুকা, ওয়া নু'মিনু বিকা, ওয়া নাতাওয়াক্কালু 'আলাইকা, ওয়া নুছনী 'আলাইকাল খাইর, ওয়া নাশকুরুকা, ওয়ালা নাকফুরুকা, ওয়া নাখলাউ, ওয়া নাতরুকু মাঁই ইয়াফজুরুকা। আল্লাহুম্মা ইয়্যাকা না'বুদু ওয়া লাকানুসল্লী, ওয়া নাসজুদু, ওয়া ইলাইকা নাস'আ, ওয়া নাহফিদু, ওয়া নারজু রাহমাতাকা, ওয়া নাখশা আযাবাকা, ইন্না আযাবাকা বিল কুফ্ফারি মুলহিক্ক।",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
