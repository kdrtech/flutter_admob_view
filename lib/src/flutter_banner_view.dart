// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../flutter_add_in_one_admob_view.dart';

class FlutterBannerView extends StatefulWidget {
  var adUnitIdiOS = "";
  var adUnitIdAndroid = "";
  Function(bool, String)? onBannerListener;
  FlutterBannerView({
    required this.adUnitIdAndroid,
    required this.adUnitIdiOS,
    required this.onBannerListener,
  });
  @override
  FlutterBannerBannerViewState createState() => FlutterBannerBannerViewState();
}

class FlutterBannerBannerViewState extends State<FlutterBannerView> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  /// Loads a banner ad.
  void loadAd() {
    var adUnitId = FlutterAdmobViewUtils.instance.isTest
        ? Platform.isAndroid
            ? 'ca-app-pub-3940256099942544/6300978111'
            : 'ca-app-pub-3940256099942544/2934735716'
        : Platform.isAndroid
            ? widget.adUnitIdAndroid
            : widget.adUnitIdiOS;

    _bannerAd = BannerAd(
      adUnitId: adUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          debugPrint('$ad loaded.');
          widget.onBannerListener?.call(
            true,
            "loaded",
          );
          setState(() {
            _isLoaded = true;
          });
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (ad, err) {
          widget.onBannerListener?.call(
            false,
            "BannerAd failed to load: Invalid Request. Cannot determine request type. Is your ad unit id correct?",
          );
          debugPrint(
            'BannerAd failed to load: Invalid Request. Cannot determine request type. Is your ad unit id correct?',
          );
          // Dispose the ad here to free resources.
          ad.dispose();
        },
      ),
    )..load();
  }

  @override
  void initState() {
    loadAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoaded) {
      return SizedBox(
        width: _bannerAd!.size.width.toDouble(),
        height: _bannerAd!.size.height.toDouble(),
        child: AdWidget(ad: _bannerAd!),
      );
    }
    return Text("d");
  }
}
