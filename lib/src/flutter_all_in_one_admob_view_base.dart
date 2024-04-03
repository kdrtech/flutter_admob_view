// TODO: Put public facing types in this file.

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'flutter_banner_view.dart';
import 'flutter_interstitial_rewarded_view.dart';
import 'flutter_interstitial_view.dart';

/// FlutteAdmobView is the main class of the FlutteAdmobView API.
///
/// It manages all params required for API using.
/// you can check some required, some not.
class FlutteAdmobAllInOneView extends StatelessWidget {
  /// The [adType] from user input.
  ///
  /// Ex: FlutterAdmobViewUtils.instance.adsBannertype,
  /// FlutterAdmobViewUtils.instance.adsInterstitialType,
  /// FlutterAdmobViewUtils.instance.adsInterstitialRewardedType
  var adType = "";

  /// The [adUnitIdiOS] from user input.
  ///
  ///  adUnitIdiOS for support your ios platform.
  String? adUnitIdiOS = "";

  /// The [adUnitIdAndroid] from user input.
  ///
  /// Description:  adUnitIdiOS for support your android platform.
  String? adUnitIdAndroid = "";

  /// The [onBannerListener] from user input.
  ///
  /// Description: callback from banner type
  Function(bool status, String message)? onBannerListener;

  /// The [onInitFunction] from user input.
  ///
  /// Description: will return function param for you call to show adsInterstitialType
  /// adsInterstitialRewardedType
  Function(Function? function)? onInitFunction;

  /// The [onInterstitialAdDismissed] from user input.
  ///
  /// Description: will return when interstitail has been dismissed.
  Function()? onInterstitialAdDismissed;

  /// The [onRewardedEarn] from user input.
  ///
  /// Description: will return after video has been end you can get reward to do something.
  Function(String amount, String type)? onRewardedEarn;

  FlutteAdmobAllInOneView(
      {required this.adType,
      this.adUnitIdAndroid,
      this.adUnitIdiOS,
      this.onBannerListener,
      this.onInterstitialAdDismissed,
      this.onInitFunction,
      this.onRewardedEarn});
  @override
  Widget build(BuildContext context) {
    if (FlutteAdmobAllInOneViewUtils.instance.adsBannertype == adType) {
      return Align(
        alignment: Alignment.center,
        child: FlutterBannerView(
          adUnitIdAndroid: adUnitIdAndroid ?? "",
          adUnitIdiOS: adUnitIdiOS ?? "",
          onListener: onBannerListener,
        ),
      );
    }
    if (FlutteAdmobAllInOneViewUtils.instance.adsInterstitialType == adType) {
      return Align(
        alignment: Alignment.center,
        child: FlutterInterstitialView(
          adUnitIdAndroid: adUnitIdAndroid ?? "",
          adUnitIdiOS: adUnitIdiOS ?? "",
          onListener: onInitFunction,
          onInterstitialAdDismissed: onInterstitialAdDismissed,
        ),
      );
    }
    if (FlutteAdmobAllInOneViewUtils.instance.adsInterstitialRewardedType ==
        adType) {
      return Align(
        alignment: Alignment.center,
        child: FlutterInterstitialRewardedView(
          adUnitIdAndroid: adUnitIdAndroid ?? "",
          adUnitIdiOS: adUnitIdiOS ?? "",
          onListener: onInitFunction,
          onRewardedEarn: onRewardedEarn,
          onInterstitialAdDismissed: onInterstitialAdDismissed,
        ),
      );
    }

    return Center(
      child: Text("Invalid ads type"),
    );
  }
}

/// FlutteAdmobAllInOneViewUtils
///
/// It manages all params required for API using.
/// you can check some required, some not.
class FlutteAdmobAllInOneViewUtils {
  FlutteAdmobAllInOneViewUtils._();

  static final FlutteAdmobAllInOneViewUtils _instance =
      FlutteAdmobAllInOneViewUtils._()..init();

  /// Shared instance to initialize the AdMob SDK.
  static FlutteAdmobAllInOneViewUtils get instance => _instance;
  void init() {
    MobileAds.instance.initialize();
  }

  /// The [isTest] param for allow ads testing or production
  ///
  ///Ex: true -> prod , false -> testing or development.
  var isTest = false;

  /// The [adSizeBanner] banner size.
  var adSizeBanner = AdSize.banner;

  /// The [adSizeFluid] fluid size.
  var adSizeFluid = AdSize.fluid;

  /// The [adSizeFullBanner] fullBanner size.
  var adSizeFullBanner = AdSize.fullBanner;

  /// The [adSizeLargeBanner] largeBanner size.
  var adSizeLargeBanner = AdSize.largeBanner;

  /// The [adSizeLeaderboard] leaderboard size.
  var adSizeLeaderboard = AdSize.leaderboard;

  /// The [adsBannertype] BannerAd type.
  var adsBannertype = "BannerAd";

  /// The [adsInterstitialType] Interstitial type.
  var adsInterstitialType = "Interstitial";

  /// The [adsInterstitialRewardedType] InterstitialRewarded type.
  var adsInterstitialRewardedType = "InterstitialRewarded";

  //var adsRewardedType = "Rewarded";
  //var adsNativeType = "Native";

  var adUnitIdAndroidBannerTesting = "ca-app-pub-3940256099942544/6300978111";
  var adUnitIdiOSBannerTesting = "ca-app-pub-3940256099942544/2934735716";
  var adUnitIdAndroidInterstitialTesting =
      "ca-app-pub-3940256099942544/1033173712";
  var adUnitIdiOSInterstitialTesting = "ca-app-pub-3940256099942544/4411468910";

  var adUnitIdAndroidInterstitialRewardTesting =
      "ca-app-pub-3940256099942544/5354046379";
  var adUnitIdiOSInterstitialRewardTesting =
      "ca-app-pub-3940256099942544/6978759866";
}
