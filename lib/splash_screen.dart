import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_translation/languages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

final Languages _languages = Languages();
String localLanguage = EnTH.en;

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: _titleContent(),
        backgroundColor: Colors.white,
        actions: [_translateButton()],
      ),
      body: _content(),
    );
  }

  Widget _content() {
    List<String> keys = i18n.toMap().values.toList();
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _controlPlaylistButton(true),
                Image.network(
                  'https://www.dochord.com/wp-content/uploads/2024/12/fdgsddgw.webp',
                  height: 250,
                ),
                _controlPlaylistButton(false),
              ],
            ),
            ListView.builder(
              itemCount: keys.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                String key = keys[index];
                return _textTranslate(key);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleContent() {
    return Text(i18n.doesnTKnowYouLikeIDo.tr);
  }

  Widget _textTranslate(String text) {
    return Center(child: Text(text.tr));
  }

  Widget _translateButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          localLanguage = localLanguage == EnTH.th ? EnTH.en : EnTH.th;
          Get.updateLocale(Locale(localLanguage));
        });
      },
      child: Text(localLanguage),
    );
  }

  Widget _controlPlaylistButton(bool isLast) {
    return IconButton(
      onPressed: () {
        setState(() {
          _languages.upDatedI18nFromAPI(isLast);
        });
      },
      icon: isLast
          ? const Icon(Icons.arrow_back_ios)
          : const Icon(Icons.arrow_forward_ios),
    );
  }
}
