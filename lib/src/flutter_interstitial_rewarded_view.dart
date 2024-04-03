// ignore_for_file: must_be_immutable

import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../flutter_all_in_one_admob_view.dart';

class FlutterInterstitialRewardedView extends StatefulWidget {
  var adUnitIdiOS = "";
  var adUnitIdAndroid = "";
  Function(String amount, String type)? onRewardedEarn;
  Function? show;
  Function(Function? showFunction)? onListener;
  Function()? onInterstitialAdDismissed;
  FlutterInterstitialRewardedView({
    required this.adUnitIdAndroid,
    required this.adUnitIdiOS,
    this.onRewardedEarn,
    this.onInterstitialAdDismissed,
    required this.onListener,
  });
  @override
  FlutterInterstitialRewardedViewState createState() =>
      FlutterInterstitialRewardedViewState();
}

class FlutterInterstitialRewardedViewState
    extends State<FlutterInterstitialRewardedView> {
  RewardedInterstitialAd? _rewardedInterstitialAd;

  /// Loads a rewarded ad.
  void loadAd() {
    var adUnitId = FlutterAdmobViewUtils.instance.isTest
        ? Platform.isAndroid
            ? 'ca-app-pub-3940256099942544/5354046379'
            : 'ca-app-pub-3940256099942544/6978759866'
        : Platform.isAndroid
            ? widget.adUnitIdAndroid
            : widget.adUnitIdiOS;
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
                  loadAd();
                },
                // Called when the ad dismissed full screen content.
                onAdDismissedFullScreenContent: (ad) {
                  // Dispose the ad here to free resources.
                  ad.dispose();
                  loadAd();
                  widget.onInterstitialAdDismissed?.call();
                },
                // Called when a click is recorded for an ad.
                onAdClicked: (ad) {});

            debugPrint('$ad loaded.');
            // Keep a reference to the ad so you can show it later.
            _rewardedInterstitialAd = ad;
            widget.onListener?.call(widget.show);
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
        widget.onRewardedEarn?.call("${rewardItem.amount}", rewardItem.type);
      });
    };
    loadAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(child: Text(""), visible: false);
  }
}
