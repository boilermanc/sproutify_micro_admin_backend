import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // main_notifications
  {
    'bodn5jw4': {
      'en': 'Notifications',
      'es': '',
    },
    'xooojxyc': {
      'en': 'Below are your notifications',
      'es': '',
    },
    'l5tmpjsh': {
      'en': 'New User Request',
      'es': '',
    },
    '0lhqb6o5': {
      'en': '2 hours ago',
      'es': '',
    },
    'nk3fpv5d': {
      'en': 'has requested access.',
      'es': '',
    },
    'obdwngjb': {
      'en': 'Activate',
      'es': '',
    },
    'db58j3ob': {
      'en': '--',
      'es': '',
    },
  },
  // main_users
  {
    'll33n0eb': {
      'en': 'Subscribers',
      'es': '',
    },
    '3kdbek8o': {
      'en': 'Below are a list of Subscribers.',
      'es': '',
    },
    'qecoq1ba': {
      'en': 'Search all users...',
      'es': '',
    },
    'rrmeoad7': {
      'en': 'All',
      'es': '',
    },
    'cvljh27w': {
      'en': 'Owners',
      'es': '',
    },
    'lgrlu8ot': {
      'en': 'Editors',
      'es': '',
    },
    'txdxk21u': {
      'en': 'Viewers',
      'es': '',
    },
    'l5lujvah': {
      'en': 'All',
      'es': '',
    },
    'vhnytcvl': {
      'en': 'All',
      'es': '',
    },
    'jbcltks9': {
      'en': 'Name',
      'es': '',
    },
    'rasje1w4': {
      'en': 'Last Active',
      'es': '',
    },
    '45fba4vg': {
      'en': 'Created',
      'es': '',
    },
    'd8j6eu39': {
      'en': 'Status',
      'es': '',
    },
    '1tdjoryl': {
      'en': '5 mins ago',
      'es': '',
    },
    'v8m0tfgw': {
      'en': 'Head of Design',
      'es': '',
    },
    'ja3wiqrh': {
      'en': 'Active',
      'es': '',
    },
    'au6wm0y5': {
      'en': 'Inactive',
      'es': '',
    },
    'ps4i1iy9': {
      'en': '__',
      'es': '',
    },
  },
  // recentOrders
  {
    '69oiu9hr': {
      'en': 'Recent Orders',
      'es': '',
    },
    'qg2jqvk2': {
      'en': 'Below are your most recent orders',
      'es': '',
    },
    'cmutlgly': {
      'en': 'Order Number',
      'es': '',
    },
    'zkacvi1m': {
      'en': 'Status',
      'es': '',
    },
    'cnw4dxoc': {
      'en': 'Amount',
      'es': '',
    },
    'odlaxfcs': {
      'en': 'Tray ID:',
      'es': '',
    },
    'wsr2gw0q': {
      'en': '429242424',
      'es': '',
    },
    'le77farr': {
      'en': 'Variety:',
      'es': '',
    },
    'no9zf01n': {
      'en': 'Hello World',
      'es': '',
    },
    '78vdagzs': {
      'en': 'Date Sown: ',
      'es': '',
    },
    'imyscwne': {
      'en': 'Mon. July 3rd',
      'es': '',
    },
    'upi16d6h': {
      'en': 'Harvest Date:',
      'es': '',
    },
    '8i5ddp84': {
      'en': 'Mon. July 3rd',
      'es': '',
    },
    'e0udfg1o': {
      'en': '2.5 lbs',
      'es': '',
    },
    'o32tkwaz': {
      'en': 'Accepted',
      'es': '',
    },
    '1don1nvr': {
      'en': '\$15.12',
      'es': '',
    },
    '26hxmjxt': {
      'en': '__',
      'es': '',
    },
  },
  // main_Profile
  {
    'v853k4qn': {
      'en': 'Casper Ghost',
      'es': '',
    },
    '03mgkz0q': {
      'en': 'Casper Ghost',
      'es': '',
    },
    'j8qht1cb': {
      'en': 'ghost@domain.com',
      'es': '',
    },
    '2idbeffm': {
      'en': 'Postal Code:',
      'es': '',
    },
    'wtt4ae7a': {
      'en': 'Gardening Experience:',
      'es': '',
    },
    '1n6oqzjx': {
      'en': 'Support',
      'es': '',
    },
    '0ysefftn': {
      'en': 'Tutorial',
      'es': '',
    },
    'wzf2cjl6': {
      'en': 'Submit a Bug',
      'es': '',
    },
    'm9i71qld': {
      'en': 'Submit a Feature Request',
      'es': '',
    },
    'tvtdspva': {
      'en': 'Log Out',
      'es': '',
    },
    'f4g2f1p2': {
      'en': '__',
      'es': '',
    },
  },
  // Login1
  {
    'b8nyca5z': {
      'en': 'Welcome!',
      'es': '',
    },
    'qzkbhx20': {
      'en': 'Email',
      'es': '',
    },
    'fzu2sdti': {
      'en': 'Password',
      'es': '',
    },
    'qj7qy35w': {
      'en': 'Sign In',
      'es': '',
    },
    '04uh49ul': {
      'en': 'Create Farm Manager',
      'es': '',
    },
    'm6k6x2ds': {
      'en': 'Home',
      'es': '',
    },
  },
  // home
  {
    'xz4g4tr8': {
      'en': 'Welcome',
      'es': '',
    },
    'zmvscu81': {
      'en': 'Manage Micros',
      'es': '',
    },
    'pqtlynw3': {
      'en': 'Micro Catalog',
      'es': '',
    },
    'ss0v6c7z': {
      'en': 'Batch List',
      'es': '',
    },
    'nq3g33zn': {
      'en': 'Add Batch',
      'es': '',
    },
    'wqid0wwd': {
      'en': 'Recipes',
      'es': '',
    },
    '5nbwl46l': {
      'en': 'Add Recipe',
      'es': '',
    },
    'pcrmna0s': {
      'en': 'Manage Customers and Orders',
      'es': '',
    },
    'av3bu4v2': {
      'en': 'Customer List',
      'es': '',
    },
    'n14mkqfn': {
      'en': 'Add A Customer',
      'es': '',
    },
    '164d6agh': {
      'en': 'Manage Seed Vendors',
      'es': '',
    },
    '9ondnsir': {
      'en': 'Seed Vendor List',
      'es': '',
    },
    'l4oiazv1': {
      'en': 'Add Seed Vendor',
      'es': '',
    },
    '2z74fjdk': {
      'en': '--',
      'es': '',
    },
  },
  // viewVendor
  {
    'wiyzbl8k': {
      'en': 'Vendor View',
      'es': '',
    },
    'wdprn4co': {
      'en': 'Use this page to manage your vendors.',
      'es': '',
    },
    'exwgi4my': {
      'en': 'Name',
      'es': '',
    },
    'f18rcue0': {
      'en': 'Phone',
      'es': '',
    },
    'mpl6vz6p': {
      'en': 'Email',
      'es': '',
    },
    '6pgd3prx': {
      'en': 'Website',
      'es': '',
    },
    '1xrmva5v': {
      'en': 'Notes',
      'es': '',
    },
    'sqyz6rzt': {
      'en': '__',
      'es': '',
    },
  },
  // editSupplies
  {
    'g2mj7wks': {
      'en': 'Edit Supplies',
      'es': '',
    },
    '9s4vbzru': {
      'en': 'ID',
      'es': '',
    },
    'x8ajmjpd': {
      'en': 'Use this page to manage supplies',
      'es': '',
    },
    'eb3idx8g': {
      'en': 'Product Name:',
      'es': '',
    },
    'pen0cn44': {
      'en': 'Description:',
      'es': '',
    },
    'xfeguyyo': {
      'en': 'Catagory ID:',
      'es': '',
    },
    'tm8a44jf': {
      'en': 'Is Active:',
      'es': '',
    },
    'jsc4qc7t': {
      'en': 'Image URL:',
      'es': '',
    },
    'agf103a1': {
      'en': 'Affiliate Link:',
      'es': '',
    },
    'ba3vmjm2': {
      'en': 'Directions:',
      'es': '',
    },
    '3r11xig1': {
      'en': 'Is Visable:',
      'es': '',
    },
    'l7y3rimg': {
      'en': 'Short Description:',
      'es': '',
    },
    '8zsu2eau': {
      'en': 'Tower Garden Flag:',
      'es': '',
    },
    '8wjpqvb5': {
      'en': 'Update',
      'es': '',
    },
    'kqakxhc6': {
      'en': '__',
      'es': '',
    },
  },
  // microCatalog
  {
    'f3iku18f': {
      'en': 'Microgreen Catalog',
      'es': '',
    },
    '6w92xjp3': {
      'en':
          'Use this page to manage the microgreens you allow in your catalog.',
      'es': '',
    },
    'd99yomue': {
      'en': 'Expanded body text',
      'es': '',
    },
    'adwe0ok6': {
      'en': '__',
      'es': '',
    },
  },
  // editMicrogreens
  {
    'rf2yg656': {
      'en': 'Edit A Plant',
      'es': '',
    },
    '65uo8xwf': {
      'en': 'ID',
      'es': '',
    },
    'anfy5lfs': {
      'en': 'Use this page to add a plant.',
      'es': '',
    },
    '4a4uaekk': {
      'en': 'Plant Name:',
      'es': '',
    },
    'p5chk5vc': {
      'en': 'Short Description:',
      'es': '',
    },
    'k293u3dc': {
      'en': 'Growing Season:',
      'es': '',
    },
    'vu1phato': {
      'en': 'Harvest Method:',
      'es': '',
    },
    'vdtwd4pj': {
      'en': 'First Harvest:',
      'es': '',
    },
    'fm6mi366': {
      'en': 'Final Harvest:',
      'es': '',
    },
    'iramrpqo': {
      'en': 'Best Placement:',
      'es': '',
    },
    'gw5pjydj': {
      'en': 'Long Description:',
      'es': '',
    },
    'uidch71x': {
      'en': 'Indoor Outdoor:',
      'es': '',
    },
    '53bbvve6': {
      'en': 'Average Rating:',
      'es': '',
    },
    'q5yy4b7z': {
      'en': 'Update',
      'es': '',
    },
    '8m4ne83m': {
      'en': '__',
      'es': '',
    },
  },
  // addPlant
  {
    '0vg6ewly': {
      'en': 'Add A Plant',
      'es': '',
    },
    'nu2qq98t': {
      'en': 'Use this page to add a plant.',
      'es': '',
    },
    'fdju9nyx': {
      'en': 'Plant Name:',
      'es': '',
    },
    '0bduecc1': {
      'en': 'Short Description:',
      'es': '',
    },
    '4b14t7go': {
      'en': 'Growing Season:',
      'es': '',
    },
    'qpftkkpx': {
      'en': 'Late Spring to Early Fall',
      'es': '',
    },
    '04fixurd': {
      'en': 'Spring and Summer',
      'es': '',
    },
    'w9cs0tpm': {
      'en': 'Spring and Fall',
      'es': '',
    },
    'fmx349bp': {
      'en': 'Harvest Method:',
      'es': '',
    },
    'x89hs0nu': {
      'en': 'Full Harvest',
      'es': '',
    },
    'eeqsg08r': {
      'en': 'Cut and Come Again',
      'es': '',
    },
    'eib8ju4h': {
      'en': 'First Harvest:',
      'es': '',
    },
    'mp5gtbv0': {
      'en': 'Format: xx-xx days',
      'es': '',
    },
    '4tlupref': {
      'en': 'Final Harvest:',
      'es': '',
    },
    'rkw9c5c0': {
      'en': 'Format: xx-xx days',
      'es': '',
    },
    '7hf8pn22': {
      'en': 'Placement: ',
      'es': '',
    },
    'vj1f4eum': {
      'en': 'Any Level',
      'es': '',
    },
    '0g8zx1rc': {
      'en': 'Lower Level',
      'es': '',
    },
    'k7d0s4kr': {
      'en': 'Long Description:',
      'es': '',
    },
    '13kyk286': {
      'en': 'Indoor/Outdoor:',
      'es': '',
    },
    'ck7gpwyy': {
      'en': 'Indoor',
      'es': '',
    },
    '34hj6mou': {
      'en': 'Outdoor',
      'es': '',
    },
    'ahg7igb2': {
      'en': 'Both',
      'es': '',
    },
    'vj061dbc': {
      'en': 'Average Rating:',
      'es': '',
    },
    'i00hmgh5': {
      'en': 'Value 1 to 5',
      'es': '',
    },
    'xkgo8g2g': {
      'en': 'Add A Plant',
      'es': '',
    },
    'aaaw2wgd': {
      'en': '__',
      'es': '',
    },
  },
  // addSupplies
  {
    'w6gkttca': {
      'en': 'Add Supplies',
      'es': '',
    },
    'eysmjx88': {
      'en': 'Use this page to manage supplies',
      'es': '',
    },
    '3zkf4zvj': {
      'en': 'Product Name:',
      'es': '',
    },
    'mlc6xt7l': {
      'en': 'Description:',
      'es': '',
    },
    'wwfsk6ov': {
      'en': 'Catagory ID:',
      'es': '',
    },
    'ur8r3qhl': {
      'en': 'Is Active:',
      'es': '',
    },
    'nf0emzz8': {
      'en': 'Image URL:',
      'es': '',
    },
    'eykwga1c': {
      'en': 'Affiliate Link:',
      'es': '',
    },
    'rqh1xgyi': {
      'en': 'Directions:',
      'es': '',
    },
    'ibxct7iw': {
      'en': 'Is Visable:',
      'es': '',
    },
    'rkjp80r5': {
      'en': 'Short Description:',
      'es': '',
    },
    'xod7j2cx': {
      'en': 'Tower Garden Flag:',
      'es': '',
    },
    '5k441kg4': {
      'en': 'Add Supplies',
      'es': '',
    },
    'wcu48ndq': {
      'en': '__',
      'es': '',
    },
  },
  // viewCustomer
  {
    '253p99uj': {
      'en': 'Customer View',
      'es': '',
    },
    '8q951yw6': {
      'en': 'Use this page to manage your customers.',
      'es': '',
    },
    'u912t7ti': {
      'en': 'Billing Address',
      'es': '',
    },
    'mkmrckaq': {
      'en': 'Delivery Address',
      'es': '',
    },
    '7fso71dm': {
      'en': '__',
      'es': '',
    },
  },
  // addCustomer
  {
    '0zisd14a': {
      'en': 'Add Customer',
      'es': '',
    },
    'i36rg5vx': {
      'en': 'Use this page to a customer.',
      'es': '',
    },
    'hhhzq475': {
      'en': 'Customer Name',
      'es': '',
    },
    't3irf1zu': {
      'en': 'Contact Name',
      'es': '',
    },
    'bn83ph2f': {
      'en': 'Contact Phone',
      'es': '',
    },
    '3t19tyf9': {
      'en': 'Email',
      'es': '',
    },
    'fqh9pdkp': {
      'en': 'Billing Contact',
      'es': '',
    },
    'ug4k885a': {
      'en': 'Billing Contact First Name',
      'es': '',
    },
    'wiczopjp': {
      'en': 'Billing Contact Last Name',
      'es': '',
    },
    'm2qi3wmy': {
      'en': 'Billing Contact Phone',
      'es': '',
    },
    'cxokn3z1': {
      'en': 'Billing Contact Emal',
      'es': '',
    },
    'xk334phr': {
      'en': 'Billing Street',
      'es': '',
    },
    'iosig19l': {
      'en': 'Billing City',
      'es': '',
    },
    'j5pdcpyl': {
      'en': 'Billing State',
      'es': '',
    },
    '266ig4ki': {
      'en': 'Billing Postal Code',
      'es': '',
    },
    'hxi12kmj': {
      'en': 'Delivery Street',
      'es': '',
    },
    'ee34v0fp': {
      'en': 'Delivery City',
      'es': '',
    },
    '6e2vuzlj': {
      'en': 'Delivery State',
      'es': '',
    },
    '9zin2kta': {
      'en': 'Delivery Postal Code',
      'es': '',
    },
    'hb409ivi': {
      'en': 'Notes',
      'es': '',
    },
    '43jolzjw': {
      'en': 'Add Customer',
      'es': '',
    },
    'tmdkjgd4': {
      'en': '__',
      'es': '',
    },
  },
  // addMicroBatch
  {
    'zpnp4cgu': {
      'en': 'Add Micro Batch',
      'es': '',
    },
    'eik3rfl4': {
      'en': 'Use this page to add a Micro Batch',
      'es': '',
    },
    'zi9qr000': {
      'en': 'Select Variety',
      'es': '',
    },
    '9cn1u2w0': {
      'en': 'Search for an item...',
      'es': '',
    },
    'si79eq90': {
      'en': 'Option 1',
      'es': '',
    },
    's8epd17y': {
      'en': 'Is Active',
      'es': '',
    },
    '48veryza': {
      'en': 'Select Vendor',
      'es': '',
    },
    '1cvxw99m': {
      'en': 'Search for an item...',
      'es': '',
    },
    '1stcvtig': {
      'en': 'Option 1',
      'es': '',
    },
    'sfpbto22': {
      'en': 'Lot Number',
      'es': '',
    },
    '57n8rzhz': {
      'en': 'SKU Number',
      'es': '',
    },
    'z7rm71cu': {
      'en': 'Origin',
      'es': '',
    },
    'pf6z321d': {
      'en': 'Germination Rate',
      'es': '',
    },
    'o44sl227': {
      'en': 'Purchase Date:',
      'es': '',
    },
    'dbmr8dt2': {
      'en': 'Germination  Date:',
      'es': '',
    },
    'h60f1hdb': {
      'en': 'Total Price',
      'es': '',
    },
    'fdo85tlb': {
      'en': 'Price Per Ounce',
      'es': '',
    },
    '4ejk9rhy': {
      'en': 'Quantity',
      'es': '',
    },
    '05a5xr00': {
      'en': 'Hard/Dormant',
      'es': '',
    },
    '4z7adws0': {
      'en': 'Pure Seed',
      'es': '',
    },
    'ec5qybg3': {
      'en': 'Weeds',
      'es': '',
    },
    'g1ylu5s3': {
      'en': 'Other',
      'es': '',
    },
    'lhxow6k5': {
      'en': 'Intert',
      'es': '',
    },
    'tide7klg': {
      'en': 'Noxious',
      'es': '',
    },
    'vuzczz9k': {
      'en': 'Notes:',
      'es': '',
    },
    'pea5uxb3': {
      'en': 'Add Batch',
      'es': '',
    },
    'nhfkaj8b': {
      'en': '__',
      'es': '',
    },
  },
  // addVendor
  {
    'ldhocxxe': {
      'en': 'Add Vendor',
      'es': '',
    },
    'tmjdyfqo': {
      'en': 'Use this page to add a seed vendor.',
      'es': '',
    },
    '24b2wukv': {
      'en': 'Vendor Name',
      'es': '',
    },
    '73qdx5nv': {
      'en': 'Website',
      'es': '',
    },
    '98lfxgvo': {
      'en': 'Email',
      'es': '',
    },
    '2i9n0xx4': {
      'en': 'Billing Contact',
      'es': '',
    },
    '67s39iee': {
      'en': 'Billing Contact First Name',
      'es': '',
    },
    '8km34gk8': {
      'en': 'Billing Contact Last Name',
      'es': '',
    },
    'habyeqif': {
      'en': 'Billing Contact Phone',
      'es': '',
    },
    '3fa164cn': {
      'en': 'Billing Contact Emal',
      'es': '',
    },
    'tyfc1t2j': {
      'en': 'Billing Street',
      'es': '',
    },
    'g35ydyt5': {
      'en': 'Billing City',
      'es': '',
    },
    'ox4fubap': {
      'en': 'Billing State',
      'es': '',
    },
    'pfhasrqt': {
      'en': 'Billing Postal Code',
      'es': '',
    },
    'eliax3pg': {
      'en': 'Notes',
      'es': '',
    },
    'wlnltlf1': {
      'en': 'Add Vendor',
      'es': '',
    },
    'afe3e3l2': {
      'en': '__',
      'es': '',
    },
  },
  // viewBatch
  {
    '802po9yu': {
      'en': 'Micro Batches',
      'es': '',
    },
    'prcvz705': {
      'en': 'Use this page to manage your batches.',
      'es': '',
    },
    '1g4ug68p': {
      'en': 'Variety',
      'es': '',
    },
    'g7u1w2cu': {
      'en': 'Lot Number',
      'es': '',
    },
    'y75dl51n': {
      'en': 'Date Purchased',
      'es': '',
    },
    'lhmtukpc': {
      'en': 'Germ Date',
      'es': '',
    },
    '3er2l108': {
      'en': 'Quantity',
      'es': '',
    },
    'ie2mot9q': {
      'en': 'Status',
      'es': '',
    },
    'ebf9ezlt': {
      'en': '__',
      'es': '',
    },
  },
  // createFarmManager1
  {
    'dbz1qhs7': {
      'en': 'Let\'s Get Started',
      'es': '',
    },
    'n7jj648z': {
      'en': 'Step One - Create your login account...',
      'es': '',
    },
    'q5akjh15': {
      'en': 'Email',
      'es': '',
    },
    'yma32i5r': {
      'en': 'Password',
      'es': '',
    },
    '1b0cznmq': {
      'en': 'Verify Password',
      'es': '',
    },
    'v6wnu9tf': {
      'en': 'Create Account',
      'es': '',
    },
    '2oscvb2q': {
      'en': 'Home',
      'es': '',
    },
  },
  // addProfileInfo
  {
    'w2e78yyx': {
      'en': 'Lets Create Your Profile',
      'es': '',
    },
    'jb1vcfeh': {
      'en': 'Step Two - Complete the Account Info Below...',
      'es': '',
    },
    'nxf1ro4u': {
      'en': 'First Name',
      'es': '',
    },
    '53vov2nr': {
      'en': 'Last Name',
      'es': '',
    },
    'wa9axcc4': {
      'en': 'Phone Number',
      'es': '',
    },
    'f35agps2': {
      'en': 'Postal Code',
      'es': '',
    },
    'u6l96yfs': {
      'en': 'Country',
      'es': '',
    },
    'ssn9mh8o': {
      'en': 'Create Profile',
      'es': '',
    },
    '9vhstsrt': {
      'en': 'Home',
      'es': '',
    },
  },
  // addAFarm
  {
    '388maygu': {
      'en': 'Tell About the Farm',
      'es': '',
    },
    'pazedtz2': {
      'en': 'Step Three - Add Your Farm...',
      'es': '',
    },
    'k8a1vgzh': {
      'en': 'Farm Name',
      'es': '',
    },
    'gcg99myf': {
      'en': 'Street Address',
      'es': '',
    },
    '257f439i': {
      'en': 'City',
      'es': '',
    },
    'fxuehxke': {
      'en': 'State',
      'es': '',
    },
    '6fwb1vfe': {
      'en': 'Postal Code',
      'es': '',
    },
    '0b1t9hjq': {
      'en': 'Country',
      'es': '',
    },
    '03nhtmsj': {
      'en': 'Phone',
      'es': '',
    },
    'hw0n5x9i': {
      'en': 'Email',
      'es': '',
    },
    'kgkqdyj9': {
      'en': 'Number of Employees',
      'es': '',
    },
    'of5jjnmt': {
      'en': 'Search for an item...',
      'es': '',
    },
    'u8v867hg': {
      'en': '1',
      'es': '',
    },
    '0qjsoyoi': {
      'en': '2-5',
      'es': '',
    },
    't3jaf0kd': {
      'en': '6-10',
      'es': '',
    },
    '5uz4uilc': {
      'en': '11+',
      'es': '',
    },
    'yxgm1jln': {
      'en': 'Prefered Unit',
      'es': '',
    },
    'c4uv4j5f': {
      'en': 'Search for an item...',
      'es': '',
    },
    'mpeyrn8q': {
      'en': 'Metric',
      'es': '',
    },
    'l6rnr3e1': {
      'en': 'Imperial',
      'es': '',
    },
    'daheohxf': {
      'en': 'Create Farm',
      'es': '',
    },
    'f6ebnsza': {
      'en': 'Home',
      'es': '',
    },
  },
  // finalWelcome
  {
    'xnswt9rk': {
      'en': 'Congratulations!',
      'es': '',
    },
    '8ocmgxb5': {
      'en': 'You have your farm setup and ready to go!',
      'es': '',
    },
    '928bcbh7': {
      'en': 'Add all the info of what they can do next.',
      'es': '',
    },
    'cadfxbrx': {
      'en': 'Link to Home Page',
      'es': '',
    },
    '7gqeacbo': {
      'en': 'Home',
      'es': '',
    },
  },
  // addRecipe
  {
    'b7wyxwwe': {
      'en': 'Add Micro Recipe',
      'es': '',
    },
    '4rawstvz': {
      'en': 'Use this page to add a Micro Recipe',
      'es': '',
    },
    'bfd7rlyd': {
      'en': 'Select Variety',
      'es': '',
    },
    '76i09q1g': {
      'en': 'Search for an item...',
      'es': '',
    },
    'dn9wmg2a': {
      'en': 'Option 1',
      'es': '',
    },
    'tflz733x': {
      'en': 'Is Active',
      'es': '',
    },
    '8wwbmoee': {
      'en': 'Recipe Name',
      'es': '',
    },
    'iojynb9s': {
      'en': 'Description',
      'es': '',
    },
    'edzjxwwa': {
      'en': 'Notes:',
      'es': '',
    },
    'uqaweed6': {
      'en': 'Create Recipe',
      'es': '',
    },
    's7p4uqex': {
      'en': '__',
      'es': '',
    },
  },
  // addStepsToRecipe
  {
    '3jrtbbit': {
      'en': 'Add Steps to Your Micro Recipe',
      'es': '',
    },
    '07vuqa5a': {
      'en': 'Use this page to add steps to your Micro Recipe',
      'es': '',
    },
    'qjfriu7i': {
      'en': 'Step Name',
      'es': '',
    },
    's9jhq417': {
      'en': 'Sequence',
      'es': '',
    },
    '74rlyazt': {
      'en': 'Duration:',
      'es': '',
    },
    '8gfzqzg1': {
      'en': 'Enter Time',
      'es': '',
    },
    'lkyfho5q': {
      'en': 'Select Unit...',
      'es': '',
    },
    'l9m9cvji': {
      'en': 'Search for an item...',
      'es': '',
    },
    '952hvy40': {
      'en': 'Days',
      'es': '',
    },
    '8ixk7i0x': {
      'en': 'Hours',
      'es': '',
    },
    '2goijhqf': {
      'en': 'Select Step...',
      'es': '',
    },
    'hbmrqvuw': {
      'en': 'Search for an item...',
      'es': '',
    },
    'lqj8mi3s': {
      'en': 'Option 1',
      'es': '',
    },
    'pyi5eocj': {
      'en': 'Notes:',
      'es': '',
    },
    '3tdu22ln': {
      'en': 'Add Step',
      'es': '',
    },
    '2pwpe9nc': {
      'en': 'All Finished',
      'es': '',
    },
    '7mgcvuqg': {
      'en': 'Sequence',
      'es': '',
    },
    '0b737vl2': {
      'en': 'Step',
      'es': '',
    },
    'itq5ubob': {
      'en': 'Desciption',
      'es': '',
    },
    'et6qypf1': {
      'en': 'Duration',
      'es': '',
    },
    '6ryz9ruv': {
      'en': 'Unit',
      'es': '',
    },
    'stobuo8s': {
      'en': 'Notes',
      'es': '',
    },
    'p7s49gwm': {
      'en': '__',
      'es': '',
    },
  },
  // apiTest
  {
    '7yshetho': {
      'en': 'Page Title',
      'es': '',
    },
    'jwckzjm6': {
      'en': 'Home',
      'es': '',
    },
  },
  // viewRecipes
  {
    'fl75o6oz': {
      'en': 'Recipes',
      'es': '',
    },
    'r1a4b2x5': {
      'en': 'Below is a list of recipies.',
      'es': '',
    },
    '5x4if74s': {
      'en': 'Search all recipes...',
      'es': '',
    },
    'idtfdsga': {
      'en': 'All',
      'es': '',
    },
    '67yfg0d1': {
      'en': 'Owners',
      'es': '',
    },
    'a1fwo8nv': {
      'en': 'Editors',
      'es': '',
    },
    '3t4arm1w': {
      'en': 'Viewers',
      'es': '',
    },
    '6ruwyet7': {
      'en': 'All',
      'es': '',
    },
    '73jeohx4': {
      'en': 'All',
      'es': '',
    },
    'vargfvcq': {
      'en': 'Recipe ID',
      'es': '',
    },
    'n2xapvru': {
      'en': 'Recipe',
      'es': '',
    },
    'nzo8lhdd': {
      'en': 'Variety',
      'es': '',
    },
    'hr3v5bfj': {
      'en': 'Created Date',
      'es': '',
    },
    '9kd1pfqz': {
      'en': 'Created By',
      'es': '',
    },
    'pxenje94': {
      'en': 'Edit Header 6',
      'es': '',
    },
    'j3bdi3ey': {
      'en': 'Edit Column 6',
      'es': '',
    },
    'gq989bc5': {
      'en': 'Status',
      'es': '',
    },
    'ofy1hqoj': {
      'en': 'Edit',
      'es': '',
    },
    'cjhd0q8z': {
      'en': '__',
      'es': '',
    },
  },
  // viewSteps
  {
    'npl7uykf': {
      'en': 'Recipes Steps',
      'es': '',
    },
    'ohvwg62j': {
      'en': 'Below are the steps for Recipe',
      'es': '',
    },
    'faoat3g3': {
      'en': 'Name',
      'es': '',
    },
    'mooocaqx': {
      'en': 'Last Active',
      'es': '',
    },
    'eg0pmmjp': {
      'en': 'Created',
      'es': '',
    },
    'c1sdiphb': {
      'en': 'Status',
      'es': '',
    },
    'kr50vzrh': {
      'en': '__',
      'es': '',
    },
  },
  // editSteps
  {
    '7p4qhk7x': {
      'en': 'Edit Steps to Your Micro Recipe',
      'es': '',
    },
    'oh0xiytu': {
      'en': 'Use this page to edit steps to your Micro Recipe',
      'es': '',
    },
    'k6loy1oa': {
      'en': 'Step Name',
      'es': '',
    },
    '01jkmnv4': {
      'en': 'Sequence',
      'es': '',
    },
    '5hqjncnl': {
      'en': 'Duration:',
      'es': '',
    },
    'uksi44vo': {
      'en': 'Enter Time',
      'es': '',
    },
    'bnofoub6': {
      'en': 'Select Unit...',
      'es': '',
    },
    '7pzwpgxp': {
      'en': 'Search for an item...',
      'es': '',
    },
    'mb0aspf5': {
      'en': 'Days',
      'es': '',
    },
    'sakzd37d': {
      'en': 'Hours',
      'es': '',
    },
    'hk5744nv': {
      'en': 'Select Step...',
      'es': '',
    },
    'eyxbg4cb': {
      'en': 'Search for an item...',
      'es': '',
    },
    'fkojd5ve': {
      'en': 'Option 1',
      'es': '',
    },
    'kle9sdsn': {
      'en': 'Notes:',
      'es': '',
    },
    'hqkjhddr': {
      'en': 'Add Step',
      'es': '',
    },
    's3ijburv': {
      'en': 'All Finished',
      'es': '',
    },
    'v8hn4hpn': {
      'en': 'Sequence',
      'es': '',
    },
    'k7d2k7p9': {
      'en': 'Step',
      'es': '',
    },
    'r2h2j6wg': {
      'en': 'Description',
      'es': '',
    },
    'lkpli972': {
      'en': 'Duration',
      'es': '',
    },
    '3usmi4sm': {
      'en': 'Time Unit',
      'es': '',
    },
    'gmqp0p5t': {
      'en': 'Notes',
      'es': '',
    },
    'b1ko5rno': {
      'en': '__',
      'es': '',
    },
  },
  // testBatch
  {
    '0msbbes9': {
      'en': 'Page Title',
      'es': '',
    },
    'lq4dsp4u': {
      'en': 'Micro Batches',
      'es': '',
    },
    'yq8iat9z': {
      'en': 'Use this page to manage your batches.',
      'es': '',
    },
    '1kx491st': {
      'en': 'Variety',
      'es': '',
    },
    '50unw8wp': {
      'en': 'Lot Number',
      'es': '',
    },
    'k9xqtqzw': {
      'en': 'Date Purchased',
      'es': '',
    },
    'hsc3a0cv': {
      'en': 'Germ Date',
      'es': '',
    },
    'f62haxw8': {
      'en': 'Quantity',
      'es': '',
    },
    '6rvnv7ee': {
      'en': 'Status',
      'es': '',
    },
    'sjltdare': {
      'en': 'Home',
      'es': '',
    },
  },
  // sideNav
  {
    'vjc6t6s1': {
      'en': 'Platform Navigation',
      'es': '',
    },
    'e9etqxu8': {
      'en': 'Dashboard',
      'es': '',
    },
    '57wi69n9': {
      'en': 'Users',
      'es': '',
    },
    'aix3duiu': {
      'en': 'Notifications',
      'es': '',
    },
    'b6loy2lb': {
      'en': '12',
      'es': '',
    },
    '1gyieagi': {
      'en': 'Recent Orders',
      'es': '',
    },
    '6dkncecu': {
      'en': 'Platform Settings',
      'es': '',
    },
    'fxh94wfj': {
      'en': 'Settings',
      'es': '',
    },
    'sbfvr5hn': {
      'en': 'Log Out',
      'es': '',
    },
    'qdrdtof9': {
      'en': 'Light Mode',
      'es': '',
    },
    'fsrwofko': {
      'en': 'Dark Mode',
      'es': '',
    },
  },
  // batchStatusDropdown
  {
    'a470ke0c': {
      'en': 'Select...',
      'es': '',
    },
    'ge2kzawu': {
      'en': 'Search...',
      'es': '',
    },
    'xft7dhd6': {
      'en': 'New',
      'es': '',
    },
    'h92zlcqj': {
      'en': 'Active',
      'es': '',
    },
    '1eo5ifym': {
      'en': 'Used',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'a9nxt8cy': {
      'en': 'Email address',
      'es': '',
    },
    'v8q3hx0v': {
      'en': 'Password',
      'es': '',
    },
    'lo6mgbuc': {
      'en': 'Button',
      'es': '',
    },
    'lm80ldfk': {
      'en': 'Button',
      'es': '',
    },
    'gm8ea2n1': {
      'en': 'Button',
      'es': '',
    },
    'x4emnjea': {
      'en': 'Button',
      'es': '',
    },
    'ud6w3qzc': {
      'en': 'Button',
      'es': '',
    },
    '1nuygiw7': {
      'en': 'Button',
      'es': '',
    },
    '67gu0rex': {
      'en': 'Button',
      'es': '',
    },
    '5eadtu3k': {
      'en': 'Button',
      'es': '',
    },
    'n969mn4w': {
      'en': 'Button',
      'es': '',
    },
    'mk7a7u0c': {
      'en': 'Calling',
      'es': '',
    },
    '7nx377f0': {
      'en': 'Not Called',
      'es': '',
    },
    'wtnuk77w': {
      'en': 'Pending Review',
      'es': '',
    },
    'uo9slrj2': {
      'en': 'Closed',
      'es': '',
    },
    'dg62ixt4': {
      'en': 'Completed',
      'es': '',
    },
    'd2b2bu1w': {
      'en': 'Please select...',
      'es': '',
    },
    'e8bpgqgq': {
      'en': 'Search for an item...',
      'es': '',
    },
    'tqy01axq': {
      'en': 'All',
      'es': '',
    },
    'ukbs4da1': {
      'en': 'Pending',
      'es': '',
    },
    'bx261wsw': {
      'en': 'Completed',
      'es': '',
    },
    'i8acbaet': {
      'en': 'Calling',
      'es': '',
    },
    '4qeug8nq': {
      'en': 'All',
      'es': '',
    },
    'gjvjq4mr': {
      'en': '50%',
      'es': '',
    },
    'jm0d7uln': {
      'en': 'Notifications',
      'es': '',
    },
    'qck75u1h': {
      'en': 'Notifications',
      'es': '',
    },
    'wrc8kxie': {
      'en': 'Turn on notifications',
      'es': '',
    },
    '2ms9nb1c': {
      'en': 'Male',
      'es': '',
    },
    '84utgcpw': {
      'en': 'Female',
      'es': '',
    },
    '13k7bnjm': {
      'en': 'Other',
      'es': '',
    },
    's1xo82kq': {
      'en': 'Design',
      'es': '',
    },
    'l9ir0i7z': {
      'en': 'Marketing',
      'es': '',
    },
    'mfr85k6q': {
      'en': 'Development',
      'es': '',
    },
    '5b7gf6kw': {
      'en': 'Management',
      'es': '',
    },
    '2novozzu': {
      'en': 'Operations',
      'es': '',
    },
    't11oyoyf': {
      'en': 'Customer Service',
      'es': '',
    },
    'zvpvfrdn': {
      'en': 'Design',
      'es': '',
    },
    '9twkdaw1': {
      'en': 'Button',
      'es': '',
    },
    'h52jnnf5': {
      'en': 'Button',
      'es': '',
    },
    'lpvhf4nv': {
      'en': 'Button',
      'es': '',
    },
    'c4g8wfva': {
      'en': '',
      'es': '',
    },
    'tk1uisvn': {
      'en': '',
      'es': '',
    },
    'f8zqiv2d': {
      'en': '',
      'es': '',
    },
    'ufhw4u2w': {
      'en': '',
      'es': '',
    },
    'e0se2x9q': {
      'en': '',
      'es': '',
    },
    '7msu5fqd': {
      'en': '',
      'es': '',
    },
    'nqqusui3': {
      'en': '',
      'es': '',
    },
    'xcx6dwez': {
      'en': '',
      'es': '',
    },
    'gh318ewg': {
      'en': '',
      'es': '',
    },
    'jhu2bcjc': {
      'en': '',
      'es': '',
    },
    'lpi28rsm': {
      'en': '',
      'es': '',
    },
    'otgggs98': {
      'en': '',
      'es': '',
    },
    '8ssggghs': {
      'en': '',
      'es': '',
    },
    'my4khyql': {
      'en': '',
      'es': '',
    },
    '1ah9dy5p': {
      'en': '',
      'es': '',
    },
    'qza946jp': {
      'en': '',
      'es': '',
    },
    'y4iy5g1z': {
      'en': '',
      'es': '',
    },
    'cy9w7w06': {
      'en': '',
      'es': '',
    },
    '94p95iv3': {
      'en': '',
      'es': '',
    },
    'o14xte6c': {
      'en': '',
      'es': '',
    },
    'gx8xqgvg': {
      'en': '',
      'es': '',
    },
    '80yqyj2i': {
      'en': '',
      'es': '',
    },
    '5d9i5vyo': {
      'en': '',
      'es': '',
    },
    'cpvfoe6s': {
      'en': '',
      'es': '',
    },
    'x2h29ym4': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
