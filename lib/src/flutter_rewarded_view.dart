// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../flutter_all_in_one_admob_view.dart';

class FlutterRewardedView extends StatefulWidget {
  var adUnitIdiOS = "";
  var adUnitIdAndroid = "";
  Function(String amount, String type)? onRewardedEarn;
  Function? show;
  Function(Function? showFunction)? onListener;
  Function()? onInterstitialAdDismissed;
  FlutterRewardedView({
    required this.adUnitIdAndroid,
    required this.adUnitIdiOS,
    this.onRewardedEarn,
    this.onInterstitialAdDismissed,
    required this.onListener,
  });
  @override
  FlutterRewardedViewState createState() => FlutterRewardedViewState();
}

class FlutterRewardedViewState extends State<FlutterRewardedView> {
  RewardedAd? _rewardedAd;

  /// Loads a rewarded ad.
  void loadAd() {
    var adUnitId = FlutteAdmobAllInOneViewUtils.instance.isTest
        ? Platform.isAndroid
            ? 'ca-app-pub-3940256099942544/5224354917'
            : 'ca-app-pub-3940256099942544/1712485313'
        : Platform.isAndroid
            ? widget.adUnitIdAndroid
            : widget.adUnitIdiOS;
    RewardedAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
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
          _rewardedAd = ad;
          widget.onListener?.call(widget.show);
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (LoadAdError error) {
          debugPrint('RewardedAd failed to load: $error');
        },
      ),
    );
  }

  @override
  void initState() {
    widget.show = () {
      _rewardedAd?.show(
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
