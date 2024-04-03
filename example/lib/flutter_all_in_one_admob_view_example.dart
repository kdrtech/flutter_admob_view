// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_all_in_one_admob_view/flutter_all_in_one_admob_view.dart';

class FlutterAdmobViewExample extends StatelessWidget {
  FlutterAdmobViewExample({super.key});

  Function? callMe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text("Example Admob"),
            ),
            FlutteAdmobView(
              adType: FlutterAdmobViewUtils.instance.adsBannertype,
              onBannerListener: (status, message) {
                debugPrint(message);
              },
            ),
            FlutteAdmobView(
              adType: FlutterAdmobViewUtils.instance.adsInterstitialType,
              onBannerListener: (status, message) {
                debugPrint(message);
              },
              onInterstitialListener: (function) {
                callMe = function;
              },
              onInterstitialAdDismissed: () {
                print("onInterstitialAdDismissed");
              },
            ),
            TextButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.blueAccent),
              ),
              onPressed: () {
                callMe?.call();
              },
              child: const Text("Open  Interstitial"),
            )
          ],
        ),
      ),
    );
  }
}
