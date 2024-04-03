// TODO: Put public facing types in this file.

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'flutter_banner_view.dart';

/// Checks if you are awesome. Spoiler: you are.
class FlutteAdmobView extends StatelessWidget {
  var adType = "";
  var adUnitIdiOS = "";
  var adUnitIdAndroid = "";

  Function(bool status, String message)? onBannerListener;
  FlutteAdmobView({required this.adType, this.onBannerListener});
  @override
  Widget build(BuildContext context) {
    if (FlutterAdmobViewUtils.instance.adsBannertype == adType) {
      return Align(
        alignment: Alignment.center,
        child: FlutterBannerView(
          adUnitIdAndroid: adUnitIdAndroid,
          adUnitIdiOS: adUnitIdiOS,
          onBannerListener: onBannerListener,
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
  var adsNativeType = "Native";
}
