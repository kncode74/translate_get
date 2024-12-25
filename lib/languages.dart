import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => _getKeyTranslate();

  upDatedI18nFromAPI(bool isLast) {
    Get.clearTranslations();
    Get.addTranslations(
      _getKeyTranslate(
        th: THLanguage.th,
        en: isLast ? ENLanguage.en : KOLanguage.ko,
      ),
    );
  }

  Map<String, Map<String, String>> _getKeyTranslate({
    Map<String, String>? en,
    Map<String, String>? th,
  }) {
    return {
      'th_TH': th ?? THLanguage.th,
      'en_US': en ?? ENLanguage.en,
    };
  }
}

class EnTH {
  static const en = 'en';
  static const th = 'th';
}

class KOLanguage {
  static Map<String, String> ko = {
    '_santa': 'Santa',
    '_doesn_t_know_you_like_i_do': '나만큼 당신을 아는 사람은 없어요',
    '_i_ve_been_there_through_the_good_and_bad': '좋을 때나 나쁠 때나 내가 함께했어요',
    '_know_how_to_make_you_laugh': '당신을 웃게 하는 법을 알아요',
    '_kiss_all_your_tears_away_babe': '당신의 눈물을 닦아줄게요, 자기야',
    '_only_i_can_do_that': '오직 나만이 그럴 수 있어요',
    '_why_don_t_you_just_come_over': '왜 그냥 오지 않아요?',
    '_you_ve_been_acting_so_cold': '요즘 너무 차갑게 굴어요',
    '_no_i_don_t_want_nothing_crazy': '아니요, 별난 건 원하지 않아요',
    '_just_wanna_get_you_alone': '그냥 당신과 단둘이 있고 싶어요',
    '_and_all_of_this_snow_is_falling': '이 모든 눈이 내리고 있어요',
    '_i_can_make_you_fall_too': '당신도 내게 빠지게 만들 수 있어요',
    '_tell_me_what_s_on_your_wishlist': '당신의 소원을 말해줘요',
    '_i_wanna_make_it_come_true': '그 소원을 이루어주고 싶어요',
    '_i_know_all_of_your_favorite_songs': '당신이 좋아하는 노래를 다 알아요',
    '_pick_up_each_time_you_call': '당신이 전화할 때마다 받아요',
    '_why_can_t_i_be_the_one': '왜 내가 그 사람이 될 수 없을까요?',
    '_to_give_you_everything_you_want': '당신이 원하는 모든 것을 줄 수 있는 사람',
    '_you_re_gonna_leave_me_all_alone_on_christmas': '크리스마스에 날 혼자 두고 떠날 거예요?',
    '_what_did_i_ever_do_to_deserve_all_that': '내가 뭘 잘못했길래 이런 대접을 받는 거죠?',
    '_can_t_we_just_snuggle_underneath_the_tree': '트리 아래에서 같이 껴안을 수 없나요?',
    '_by_the_fireplace': '벽난로 옆에서요?',
    '_you_know_i_make_those_cookies_you_like': '당신이 좋아하는 쿠키를 내가 만든다는 거 알잖아요',
    '_well_maybe_this_christmastime': '이번 크리스마스에는',
    '_you_ll_finally_realize': '마침내 깨달을지도 몰라요',
    '_that_i_could_be_the_one': '내가 당신을 위한 유일한 사람이라는 걸',
  };
}

class THLanguage {
  static Map<String, String> th = {
    '_santa': 'Santa',
    '_doesn_t_know_you_like_i_do': 'ไม่มีใครรู้จักคุณเหมือนฉัน',
    '_i_ve_been_there_through_the_good_and_bad':
        'ฉันอยู่ตรงนั้นทั้งในวันที่ดีและวันที่แย่',
    '_know_how_to_make_you_laugh': 'รู้วิธีทำให้คุณหัวเราะ',
    '_kiss_all_your_tears_away_babe': 'จูบลบคราบน้ำตาทั้งหมดของคุณ',
    '_only_i_can_do_that': 'โอ้ มีแค่ฉันที่ทำได้',
    '_why_don_t_you_just_come_over': 'ทำไมไม่มาหาฉันล่ะ?',
    '_you_ve_been_acting_so_cold': 'คุณทำตัวเย็นชามาก',
    '_no_i_don_t_want_nothing_crazy': 'ไม่ ฉันไม่ได้ต้องการอะไรบ้าๆ',
    '_just_wanna_get_you_alone': 'แค่อยากอยู่กับคุณตามลำพัง',
    '_and_all_of_this_snow_is_falling': 'และหิมะทั้งหมดกำลังโปรยปราย',
    '_i_can_make_you_fall_too': 'ฉันทำให้คุณหลงรักได้เช่นกัน',
    '_tell_me_what_s_on_your_wishlist': 'บอกฉันว่าคุณต้องการอะไรในใจ',
    '_i_wanna_make_it_come_true': 'ฉันอยากทำให้มันเป็นจริง',
    '_i_know_all_of_your_favorite_songs': 'ฉันรู้ทุกเพลงโปรดของคุณ',
    '_pick_up_each_time_you_call': 'รับสายคุณทุกครั้งที่โทร',
    '_why_can_t_i_be_the_one': 'ทำไมฉันถึงไม่ใช่คนที่ใช่?',
    '_to_give_you_everything_you_want': 'ที่จะมอบทุกสิ่งที่คุณต้องการให้คุณ',
    '_you_re_gonna_leave_me_all_alone_on_christmas':
        'คุณจะทิ้งฉันให้อยู่คนเดียวในวันคริสต์มาสเหรอ?',
    '_what_did_i_ever_do_to_deserve_all_that':
        'ฉันทำอะไรให้สมควรได้รับสิ่งนี้?',
    '_can_t_we_just_snuggle_underneath_the_tree':
        'เราไม่สามารถนอนกอดกันใต้ต้นคริสต์มาสได้หรือ?',
    '_by_the_fireplace': 'ข้างเตาผิง?',
    '_you_know_i_make_those_cookies_you_like': 'คุณรู้ว่าฉันทำคุกกี้ที่คุณชอบ',
    '_well_maybe_this_christmastime': 'บางทีในคริสต์มาสนี้',
    '_you_ll_finally_realize': 'คุณจะเข้าใจเสียที',
    '_that_i_could_be_the_one': 'ว่าฉันอาจเป็นคนที่ใช่',
  };
}

class ENLanguage {
  static Map<String, String> en = {
    '_santa': 'Santa',
    '_doesn_t_know_you_like_i_do': 'Doesn’t know you like I do',
    '_i_ve_been_there_through_the_good_and_bad':
        'I’ve been there through the good and bad',
    '_know_how_to_make_you_laugh': 'Know how to make you laugh',
    '_kiss_all_your_tears_away_babe': 'Kiss all your tears away, babe',
    '_only_i_can_do_that': 'Ooh, only I can do that',
    '_why_don_t_you_just_come_over': 'Why don’t you just come over?',
    '_you_ve_been_acting_so_cold': 'You’ve been acting so cold',
    '_no_i_don_t_want_nothing_crazy': 'No, I don’t want nothing crazy',
    '_just_wanna_get_you_alone': 'Just wanna get you alone',
    '_and_all_of_this_snow_is_falling': 'And all of this snow is falling',
    '_i_can_make_you_fall_too': 'I can make you fall too',
    '_tell_me_what_s_on_your_wishlist': 'So, tell me what’s on your wishlist',
    '_i_wanna_make_it_come_true': 'I wanna make it come true',
    '_i_know_all_of_your_favorite_songs': 'I know all of your favorite songs',
    '_pick_up_each_time_you_call': 'Pick up each time you call',
    '_why_can_t_i_be_the_one': 'So why can’t I be the one',
    '_to_give_you_everything_you_want': 'To give you everything you want',
    '_you_re_gonna_leave_me_all_alone_on_christmas':
        'You’re gonna leave me all alone? On Christmas?',
    '_what_did_i_ever_do_to_deserve_all_that':
        'Baby, what’d I ever do to deserve all that?',
    '_can_t_we_just_snuggle_underneath_the_tree':
        'Can’t we just, like snuggle underneath the tree?',
    '_by_the_fireplace': 'By the fireplace?',
    '_you_know_i_make_those_cookies_you_like':
        'You know I make those cookies you like',
    '_well_maybe_this_christmastime': 'Well, maybe this Christmastime',
    '_you_ll_finally_realize': 'You’ll finally realize',
    '_that_i_could_be_the_one': 'That I could be the one',
  };
}

class I18N {
  final String santa = '_santa';
  final String doesnTKnowYouLikeIDo = '_doesn_t_know_you_like_i_do';
  final String iVeBeenThereThroughTheGoodAndBad =
      '_i_ve_been_there_through_the_good_and_bad';
  final String knowHowToMakeYouLaugh = '_know_how_to_make_you_laugh';
  final String kissAllYourTearsAwayBabe = '_kiss_all_your_tears_away_babe';
  final String onlyICanDoThat = '_only_i_can_do_that';
  final String whyDonTYouJustComeOver = '_why_don_t_you_just_come_over';
  final String youVeBeenActingSoCold = '_you_ve_been_acting_so_cold';
  final String noIDonTWantNothingCrazy = '_no_i_don_t_want_nothing_crazy';
  final String justWannaGetYouAlone = '_just_wanna_get_you_alone';
  final String andAllOfThisSnowIsFalling = '_and_all_of_this_snow_is_falling';
  final String iCanMakeYouFallToo = '_i_can_make_you_fall_too';
  final String tellMeWhatSOnYourWishlist = '_tell_me_what_s_on_your_wishlist';
  final String iWannaMakeItComeTrue = '_i_wanna_make_it_come_true';
  final String iKnowAllOfYourFavoriteSongs =
      '_i_know_all_of_your_favorite_songs';
  final String pickUpEachTimeYouCall = '_pick_up_each_time_you_call';
  final String whyCanTIBeTheOne = '_why_can_t_i_be_the_one';
  final String toGiveYouEverythingYouWant = '_to_give_you_everything_you_want';
  final String youReGonnaLeaveMeAllAloneOnChristmas =
      '_you_re_gonna_leave_me_all_alone_on_christmas';
  final String whatDidIEverDoToDeserveAllThat =
      '_what_did_i_ever_do_to_deserve_all_that';
  final String canTWeJustSnuggleUnderneathTheTree =
      '_can_t_we_just_snuggle_underneath_the_tree';
  final String byTheFireplace = '_by_the_fireplace';
  final String youKnowIMakeThoseCookiesYouLike =
      '_you_know_i_make_those_cookies_you_like';
  final String wellMaybeThisChristmastime = '_well_maybe_this_christmastime';
  final String youLlFinallyRealize = '_you_ll_finally_realize';
  final String thatICouldBeTheOne = '_that_i_could_be_the_one';
}

I18N i18n = I18N();

extension I18NExtensions on I18N {
  Map<String, String> toMap() {
    return {
      'santa': santa,
      'doesnTKnowYouLikeIDo': doesnTKnowYouLikeIDo,
      'iVeBeenThereThroughTheGoodAndBad': iVeBeenThereThroughTheGoodAndBad,
      'knowHowToMakeYouLaugh': knowHowToMakeYouLaugh,
      'kissAllYourTearsAwayBabe': kissAllYourTearsAwayBabe,
      'onlyICanDoThat': onlyICanDoThat,
      'whyDonTYouJustComeOver': whyDonTYouJustComeOver,
      'youVeBeenActingSoCold': youVeBeenActingSoCold,
      'noIDonTWantNothingCrazy': noIDonTWantNothingCrazy,
      'justWannaGetYouAlone': justWannaGetYouAlone,
      'andAllOfThisSnowIsFalling': andAllOfThisSnowIsFalling,
      'iCanMakeYouFallToo': iCanMakeYouFallToo,
      'tellMeWhatSOnYourWishlist': tellMeWhatSOnYourWishlist,
      'iWannaMakeItComeTrue': iWannaMakeItComeTrue,
      'iKnowAllOfYourFavoriteSongs': iKnowAllOfYourFavoriteSongs,
      'pickUpEachTimeYouCall': pickUpEachTimeYouCall,
      'whyCanTIBeTheOne': whyCanTIBeTheOne,
      'toGiveYouEverythingYouWant': toGiveYouEverythingYouWant,
      'youReGonnaLeaveMeAllAloneOnChristmas':
          youReGonnaLeaveMeAllAloneOnChristmas,
      'whatDidIEverDoToDeserveAllThat': whatDidIEverDoToDeserveAllThat,
      'canTWeJustSnuggleUnderneathTheTree': canTWeJustSnuggleUnderneathTheTree,
      'byTheFireplace': byTheFireplace,
      'youKnowIMakeThoseCookiesYouLike': youKnowIMakeThoseCookiesYouLike,
      'wellMaybeThisChristmastime': wellMaybeThisChristmastime,
      'youLlFinallyRealize': youLlFinallyRealize,
      'thatICouldBeTheOne': thatICouldBeTheOne,
    };
  }
}
