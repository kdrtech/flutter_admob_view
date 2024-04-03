// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../flutter_all_in_one_admob_view.dart';

class FlutterInterstitialView extends StatefulWidget {
  var adUnitIdiOS = "";
  var adUnitIdAndroid = "";
  Function(Function? showFunction)? onListener;
  Function()? onInterstitialAdDismissed;
  Function? show;
  FlutterInterstitialView(
      {required this.adUnitIdAndroid,
      required this.adUnitIdiOS,
      required this.onListener,
      required this.onInterstitialAdDismissed});
  @override
  FlutterInterstitialViewState createState() => FlutterInterstitialViewState();
}

class FlutterInterstitialViewState extends State<FlutterInterstitialView> {
  InterstitialAd? _interstitialAd;

  /// Loads an interstitial ad.
  void loadAd() {
    var adUnitId = FlutterAdmobViewUtils.instance.isTest
        ? Platform.isAndroid
            ? 'ca-app-pub-3940256099942544/1033173712'
            : 'ca-app-pub-3940256099942544/4411468910'
        : Platform.isAndroid
            ? widget.adUnitIdAndroid
            : widget.adUnitIdiOS;

    InterstitialAd.load(
        adUnitId: adUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
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
            _interstitialAd = ad;
            widget.onListener?.call(widget.show);
          },
          // Called when an ad request failed.
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint('InterstitialAd failed to load: $error');
          },
        ));
  }

  @override
  void initState() {
    widget.show = () {
      //_interstitialAd
      _interstitialAd?.show();

      print("show me");
    };
    loadAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(child: Text("sdf"), visible: false);
  }
}
