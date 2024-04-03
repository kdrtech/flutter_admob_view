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
