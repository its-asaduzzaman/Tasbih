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
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(.2),
                    borderRadius:const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Text(
                  'পাঁচ ওয়াক্ত নামাজের তাসবিহ',
                  style: Styles.headLineStyle1,
                  textAlign: TextAlign.center,
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      DuaCard(
                        namazText: 'ফজর',
                        onubadText: 'তিনি চির জীবিত ও চিরস্থায়ী।',
                        arbiText: 'هوال هايول قيوم',
                        banglaText: 'হুয়াল হাইয়্যুল কাইয়্যুম',
                      ),
                      DuaCard(
                        namazText: 'যোহর',
                        onubadText: ' তিনি শ্রেষ্ট্রতর অতি মহান',
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
                    ],
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
