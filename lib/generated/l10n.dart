// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome,`
  String get welcome {
    return Intl.message('Welcome,', name: 'welcome', desc: '', args: []);
  }

  /// `Please log in`
  String get pleaselogin {
    return Intl.message(
      'Please log in',
      name: 'pleaselogin',
      desc: '',
      args: [],
    );
  }

  /// `Please register`
  String get pleaseregister {
    return Intl.message(
      'Please register',
      name: 'pleaseregister',
      desc: '',
      args: [],
    );
  }

  /// `SEND`
  String get send {
    return Intl.message('SEND', name: 'send', desc: '', args: []);
  }

  /// `Don't have an account?`
  String get donthave {
    return Intl.message(
      'Don\'t have an account?',
      name: 'donthave',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Your Password?`
  String get forgotpassword {
    return Intl.message(
      'Forgot Your Password?',
      name: 'forgotpassword',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyhave {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyhave',
      desc: '',
      args: [],
    );
  }

  /// `or sign in with`
  String get orsigninwith {
    return Intl.message(
      'or sign in with',
      name: 'orsigninwith',
      desc: '',
      args: [],
    );
  }

  /// `REGISTER`
  String get register {
    return Intl.message('REGISTER', name: 'register', desc: '', args: []);
  }

  /// `Your email not verified yet.`
  String get notverifiedyet {
    return Intl.message(
      'Your email not verified yet.',
      name: 'notverifiedyet',
      desc: '',
      args: [],
    );
  }

  /// `in order to use, please verify your email address.`
  String get inordertouse {
    return Intl.message(
      'in order to use, please verify your email address.',
      name: 'inordertouse',
      desc: '',
      args: [],
    );
  }

  /// `VERIFY`
  String get verify {
    return Intl.message('VERIFY', name: 'verify', desc: '', args: []);
  }

  /// `To reset your password, please enter your email address.`
  String get inordertoreset {
    return Intl.message(
      'To reset your password, please enter your email address.',
      name: 'inordertoreset',
      desc: '',
      args: [],
    );
  }

  /// `Trend Movies`
  String get TrendMovies {
    return Intl.message(
      'Trend Movies',
      name: 'TrendMovies',
      desc: '',
      args: [],
    );
  }

  /// `Top Rated Movies`
  String get TopRatedMovies {
    return Intl.message(
      'Top Rated Movies',
      name: 'TopRatedMovies',
      desc: '',
      args: [],
    );
  }

  /// `Action Movies`
  String get Action {
    return Intl.message('Action Movies', name: 'Action', desc: '', args: []);
  }

  // skipped getter for the 'yönetmen' key

  /// `Writer`
  String get yazar {
    return Intl.message('Writer', name: 'yazar', desc: '', args: []);
  }

  /// `Actors`
  String get oyuncular {
    return Intl.message('Actors', name: 'oyuncular', desc: '', args: []);
  }

  // skipped getter for the 'yıl' key

  // skipped getter for the 'süre' key

  /// `Category`
  String get kategori {
    return Intl.message('Category', name: 'kategori', desc: '', args: []);
  }

  // skipped getter for the 'açıklama' key

  /// `Add to Watchlist`
  String get izlemelistesineekle {
    return Intl.message(
      'Add to Watchlist',
      name: 'izlemelistesineekle',
      desc: '',
      args: [],
    );
  }

  /// `Add to Favorites`
  String get favorilereekle {
    return Intl.message(
      'Add to Favorites',
      name: 'favorilereekle',
      desc: '',
      args: [],
    );
  }

  /// `Go to Comments`
  String get yorumlaragit {
    return Intl.message(
      'Go to Comments',
      name: 'yorumlaragit',
      desc: '',
      args: [],
    );
  }

  /// `Followers`
  String get takipciler {
    return Intl.message('Followers', name: 'takipciler', desc: '', args: []);
  }

  /// `Follow`
  String get takip {
    return Intl.message('Follow', name: 'takip', desc: '', args: []);
  }

  // skipped getter for the 'takiptençık' key

  /// `Favorites`
  String get Favoriler {
    return Intl.message('Favorites', name: 'Favoriler', desc: '', args: []);
  }

  // skipped getter for the 'İzlemeListesi' key

  /// `Settings`
  String get Ayarlar {
    return Intl.message('Settings', name: 'Ayarlar', desc: '', args: []);
  }

  /// `Notifications`
  String get bildirimler {
    return Intl.message(
      'Notifications',
      name: 'bildirimler',
      desc: '',
      args: [],
    );
  }

  /// `liked your comment`
  String get yorumunubegendi {
    return Intl.message(
      'liked your comment',
      name: 'yorumunubegendi',
      desc: '',
      args: [],
    );
  }

  /// `Feedbacks`
  String get geribildirimler {
    return Intl.message(
      'Feedbacks',
      name: 'geribildirimler',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
