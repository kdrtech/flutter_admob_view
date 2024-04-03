// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class FlutterInterstitialRewardedView extends StatefulWidget {
  var adUnitIdiOS = "";
  var adUnitIdAndroid = "";
  Function(String amount, String type)? onRewardedInterstitialEarn;
  Function? show;
  FlutterInterstitialRewardedView({
    required this.adUnitIdAndroid,
    required this.adUnitIdiOS,
    required this.onRewardedInterstitialEarn,
  });
  @override
  FlutterInterstitialRewardedViewState createState() =>
      FlutterInterstitialRewardedViewState();
}

class FlutterInterstitialRewardedViewState
    extends State<FlutterInterstitialRewardedView> {
  RewardedInterstitialAd? _rewardedInterstitialAd;

  // TODO: replace this test ad unit with your own ad unit.
  final adUnitId = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/5354046379'
      : 'ca-app-pub-3940256099942544/6978759866';

  /// Loads a rewarded ad.
  void loadAd() {
    RewardedInterstitialAd.load(
        adUnitId: adUnitId,
        request: const AdRequest(),
        rewardedInterstitialAdLoadCallback: RewardedInterstitialAdLoadCallback(
          // Called when an ad is successfully received.
          onAdLoaded: (ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
                // Called when the ad showed the full screen content.
                onAdShowedFullScreenContent: (ad) {},
                // Called when an impression occurs on the ad.
                onAdImpression: (ad) {},
                // Called when the ad failed to show full screen content.
                onAdFailedToShowFullScreenContent: (ad, err) {
                  // Dispose the ad here to free resources.
                  ad.dispose();
                },
                // Called when the ad dismissed full screen content.
                onAdDismissedFullScreenContent: (ad) {
                  // Dispose the ad here to free resources.
                  ad.dispose();
                },
                // Called when a click is recorded for an ad.
                onAdClicked: (ad) {});

            debugPrint('$ad loaded.');
            // Keep a reference to the ad so you can show it later.
            _rewardedInterstitialAd = ad;
          },
          // Called when an ad request failed.
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint('RewardedInterstitialAd failed to load: $error');
          },
        ));
  }

  @override
  void initState() {
    widget.show = () {
      _rewardedInterstitialAd?.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem rewardItem) {
        widget.onRewardedInterstitialEarn
            ?.call("${rewardItem.amount}", rewardItem.type);
      });
    };
    loadAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text("");
  }
}
