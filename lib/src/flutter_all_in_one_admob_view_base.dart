// TODO: Put public facing types in this file.

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'flutter_banner_view.dart';
import 'flutter_interstitial_view.dart';

/// Checks if you are awesome. Spoiler: you are.
class FlutteAdmobView extends StatelessWidget {
  var adType = "";
  var adUnitIdiOS = "";
  var adUnitIdAndroid = "";

  Function(bool status, String message)? onBannerListener;
  Function(Function? function)? onInterstitialListener;
  Function()? onInterstitialAdDismissed;
  FlutteAdmobView({
    required this.adType,
    this.onBannerListener,
    this.onInterstitialListener,
    this.onInterstitialAdDismissed,
  });
  @override
  Widget build(BuildContext context) {
    if (FlutterAdmobViewUtils.instance.adsBannertype == adType) {
      return Align(
        alignment: Alignment.center,
        child: FlutterBannerView(
          adUnitIdAndroid: adUnitIdAndroid,
          adUnitIdiOS: adUnitIdiOS,
          onListener: onBannerListener,
        ),
      );
    }
    if (FlutterAdmobViewUtils.instance.adsInterstitialType == adType) {
      return Align(
        alignment: Alignment.center,
        child: FlutterInterstitialView(
          adUnitIdAndroid: adUnitIdAndroid,
          adUnitIdiOS: adUnitIdiOS,
          onListener: onInterstitialListener,
          onInterstitialAdDismissed: onInterstitialAdDismissed,
        ),
      );
    }
    if (FlutterAdmobViewUtils.instance.adsInterstitialRewardedType == adType) {
      return Align(
        alignment: Alignment.center,
        child: FlutterInterstitialView(
          adUnitIdAndroid: adUnitIdAndroid,
          adUnitIdiOS: adUnitIdiOS,
          onListener: onInterstitialListener,
          onInterstitialAdDismissed: onInterstitialAdDismissed,
        ),
      );
    }
    return Center(
      child: Text("Invalid ads type"),
    );
  }
}

class FlutterAdmobViewUtils {
  FlutterAdmobViewUtils._();

  static final FlutterAdmobViewUtils _instance = FlutterAdmobViewUtils._()
    ..init();

  /// Shared instance to initialize the AdMob SDK.
  static FlutterAdmobViewUtils get instance => _instance;
  void init() {
    MobileAds.instance.initialize();
  }

  var isTest = false;
  var adSizeBanner = AdSize.banner;
  var adSizeFluid = AdSize.fluid;
  var adSizeFullBanner = AdSize.fullBanner;
  var adSizeLargeBanner = AdSize.largeBanner;
  var adSizeLeaderboard = AdSize.leaderboard;

  var adsBannertype = "BannerAd";
  var adsInterstitialType = "Interstitial";
  var adsRewardedType = "Rewarded";
  var adsInterstitialRewardedType = "InterstitialRewarded";
  var adsNativeType = "Native";
}
