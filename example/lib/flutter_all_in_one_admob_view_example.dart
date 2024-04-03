import 'package:flutter/material.dart';
import 'package:flutter_all_in_one_admob_view/flutter_add_in_one_admob_view.dart';

class FlutterAdmobViewExample extends StatelessWidget {
  const FlutterAdmobViewExample({super.key});

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
              adType: FlutterAdmobViewUtils.instance.adsBannertype,
              onBannerListener: (status, message) {
                debugPrint(message);
              },
            )
          ],
        ),
      ),
    );
  }
}
