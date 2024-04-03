// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_all_in_one_admob_view/flutter_all_in_one_admob_view.dart';

class FlutterAdmobViewExample extends StatelessWidget {
  FlutterAdmobViewExample({super.key});
  Function? intersitialFunction;
  Function? interstialRewareFunction;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Example Admob",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              FlutteAdmobView(
                adUnitIdAndroid: FlutterAdmobViewUtils
                    .instance.adUnitIdAndroidInterstitialTesting,
                adUnitIdiOS: FlutterAdmobViewUtils
                    .instance.adUnitIdiOSInterstitialTesting,
                adType: FlutterAdmobViewUtils.instance.adsInterstitialType,
                onBannerListener: (status, message) {
                  debugPrint(message);
                },
                onInitFunction: (function) {
                  intersitialFunction = function;
                },
                onInterstitialAdDismissed: () {
                  print("onInterstitialAdDismissed: Interstitial Type");
                },
              ),
              FlutteAdmobView(
                adUnitIdAndroid: FlutterAdmobViewUtils
                    .instance.adUnitIdAndroidInterstitialRewardTesting,
                adUnitIdiOS: FlutterAdmobViewUtils
                    .instance.adUnitIdiOSInterstitialRewardTesting,
                adType:
                    FlutterAdmobViewUtils.instance.adsInterstitialRewardedType,
                onBannerListener: (status, message) {
                  debugPrint(message);
                },
                onInitFunction: (function) {
                  interstialRewareFunction = function;
                },
                onRewardedEarn: (amount, type) {
                  debugPrint(amount);
                },
                onInterstitialAdDismissed: () {
                  print("onInterstitialAdDismissed: Reward Type");
                },
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          height: 150,
                          child: Card(
                              child: Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-photo/book-composition-with-open-book_23-2147690555.jpg",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              const Expanded(
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            "Beautiful Disaster (Beautiful, #1)",
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "by Jamie McGuire (Goodreads Author)",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          )));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: FlutteAdmobView(
                  adUnitIdAndroid: FlutterAdmobViewUtils
                      .instance.adUnitIdAndroidBannerTesting,
                  adUnitIdiOS:
                      FlutterAdmobViewUtils.instance.adUnitIdiOSBannerTesting,
                  adType: FlutterAdmobViewUtils.instance.adsBannertype,
                  onBannerListener: (status, message) {
                    debugPrint(message);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      side:
                          const BorderSide(width: 2, color: Colors.blueAccent),
                    ),
                    onPressed: () {
                      intersitialFunction?.call();
                    },
                    child: const Text(
                      "Open  Interstitial",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      side:
                          const BorderSide(width: 2, color: Colors.blueAccent),
                    ),
                    onPressed: () {
                      interstialRewareFunction?.call();
                    },
                    child: const Text(
                      "Open  Interstitial Reward",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const Spacer(),
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}
