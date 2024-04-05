<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# flutter_all_in_one_admob_view

[![Pub Package](https://img.shields.io/pub/v/flutter_all_in_one_admob_view.svg?style=flat-square)](https://pub.dev/packages/flutter_all_in_one_admob_view)

<a  href="https://www.buymeacoffee.com/kdrtech" target="_blank">
<img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" height="41" />
</a>

Highly video, feature-packed flutter_all_in_one_admob_view widget for Flutter.

| ![Image](https://raw.githubusercontent.com/kdrtech/flutter_admob_view/master/example/assets/screen.gif)
| :------------: |

## Features
* Support Admob Banner.
* Support Admob Interstitial.
* Support Admob Interstitial Rewarded.
* Support Admob Rewarded.

## Usage

Make sure to check out [examples](https://github.com/kdrtech/flutter_admob_view/tree/master/example/lib)

### Installation

Add the following line to `pubspec.yaml`:

```yaml
dependencies:
  flutter_all_in_one_admob_view: ^1.0.2
```
### Basic setup

*Configration Aadmo SDK with IOS*
* Change ca-app-pub-3940256099942544~3347511713 to your admob app id [here](https://admob.google.com)
* open ios/Runner/Info.plist added to

```yaml
<key>GADApplicationIdentifier</key>
<string>ca-app-pub-3940256099942544~3347511713</string>
```
```yaml
<key>SKAdNetworkItems</key>
<array>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>cstr6suwn9.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>4fzdc2evr5.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>4pfyvq9l8r.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>2fnua5tdw4.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>ydx93a7ass.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>5a6flpkh64.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>p78axxw29g.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>v72qych5uu.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>ludvb6z3bs.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>cp8zw746q7.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>3sh42y64q3.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>c6k4g5qg8m.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>s39g8k73mm.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>3qy4746246.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>f38h382jlk.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>hs6bdukanm.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>v4nxqhlyqp.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>wzmmz9fp6w.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>yclnxrl5pm.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>t38b2kh725.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>7ug5zh24hu.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>gta9lk7p23.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>vutu7akeur.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>y5ghdn5j9k.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>n6fk4nfna4.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>v9wttpbfk9.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>n38lu8286q.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>47vhws6wlr.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>kbd757ywx3.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>9t245vhmpl.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>eh6m2bh4zr.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>a2p9lx4jpn.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>22mmun2rn5.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>4468km3ulz.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>2u9pt9hc89.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>8s468mfl3y.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>klf5c3l5u5.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>ppxm28t8ap.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>ecpz2srf59.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>uw77j35x4d.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>pwa73g5rt2.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>mlmmfzh3r3.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>578prtvx9j.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>4dzt52r2t5.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>e5fvkxwrpn.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>8c4e2ghe7u.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>zq492l623r.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>3rd42ekr43.skadnetwork</string>
</dict>
<dict>
<key>SKAdNetworkIdentifier</key>
<string>3qcr597p9d.skadnetwork</string>
</dict>
</array>
```

*Configration Aadmo SDK with Android*
* Change ca-app-pub-3940256099942544~3347511713 to your admob app id [here](https://admob.google.com)
* open AndroidManifest.xml added
```yaml
<meta-data
  android:name="com.google.android.gms.ads.APPLICATION_ID"
  android:value="ca-app-pub-3940256099942544~3347511713"/>
```

*The complete example is available [here](https://github.com/kdrtech/flutter_admob_view/tree/master/example/lib).*

*Add config to your main()*
```dart
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutteAdmobAllInOneViewUtils.instance.init();
  FlutteAdmobAllInOneViewUtils.instance.isTest = false;
  runApp(const MyApp());
}
```
*Admob Banner Type*
* adUnitIdAndroid : adUnitIdAndroid for Android platfrom from your admob account: [here](https://admob.google.com)
* adUnitIdiOS : adUnitIdAndroid for IOS platfrom from your admob account: [here](https://admob.google.com)
* adType : Ads Type [here](https://github.com/kdrtech/flutter_admob_view/tree/master/example/lib)
```dart
FlutteAdmobAllInOneView(
    adUnitIdAndroid: FlutteAdmobAllInOneViewUtils.instance.adUnitIdAndroidBannerTesting,
    adUnitIdiOS:FlutteAdmobAllInOneViewUtils.instance.adUnitIdiOSBannerTesting,
    adType: FlutteAdmobAllInOneViewUtils.instance.adsBannertype,
    onBannerListener: (status, message) {
      debugPrint(message);
    },
)
```

*Admob Interstitial Type*
* adUnitIdAndroid : adUnitIdAndroid for Android platfrom from your admob account: [here](https://admob.google.com)
* adUnitIdiOS : adUnitIdAndroid for IOS platfrom from your admob account: [here](https://admob.google.com)
* adType : Ads Type [here](https://github.com/kdrtech/flutter_admob_view/tree/master/example/lib)
* onInitFunction: Store functiion for using to show ads.
* onInterstitialAdDismissed: callback after ads dismissed.
  
```dart
FlutteAdmobAllInOneView(
    adUnitIdAndroid: FlutteAdmobAllInOneViewUtils.instance.adUnitIdAndroidInterstitialTesting,
    adUnitIdiOS: FlutteAdmobAllInOneViewUtils.instance.adUnitIdiOSInterstitialTesting,
    adType: FlutteAdmobAllInOneViewUtils.instance.adsInterstitialType,
    onInitFunction: (function) {
      intersitialFunction = function;
    },
    onInterstitialAdDismissed: () {
      print("onInterstitialAdDismissed: Interstitial Type");
    },
)
```

*Admob Interstitial Rewarded Type*
* adUnitIdAndroid : adUnitIdAndroid for Android platfrom from your admob account: [here](https://admob.google.com)
* adUnitIdiOS : adUnitIdAndroid for IOS platfrom from your admob account: [here](https://admob.google.com)
* adType : Ads Type [here](https://github.com/kdrtech/flutter_admob_view/tree/master/example/lib)
* onInitFunction: Store functiion for using to show ads.
* onRewardedEarn: Reward callback after video end.
* onInterstitialAdDismissed: callback after ads dismissed.
  
```dart
FlutteAdmobAllInOneView(
    adUnitIdAndroid: FlutteAdmobAllInOneViewUtils.instance.adUnitIdAndroidInterstitialRewardTesting,
    adUnitIdiOS: FlutteAdmobAllInOneViewUtils.instance.adUnitIdiOSInterstitialRewardTesting,
    adType:FlutteAdmobAllInOneViewUtils.instance.adsInterstitialRewardedType,
    onInitFunction: (function) {
      interstialRewareFunction = function;
    },
    onRewardedEarn: (amount, type) {
      debugPrint(amount);
    },
    onInterstitialAdDismissed: () {
      print("onInterstitialAdDismissed: Reward Type");
    },
)
```
*Admob Rewarded Type*
* adUnitIdAndroid : adUnitIdAndroid for Android platfrom from your admob account: [here](https://admob.google.com)
* adUnitIdiOS : adUnitIdAndroid for IOS platfrom from your admob account: [here](https://admob.google.com)
* adType : Ads Type [here](https://github.com/kdrtech/flutter_admob_view/tree/master/example/lib)
* onInitFunction: Store functiion for using to show ads.
* onRewardedEarn: Reward callback after video end.
* onInterstitialAdDismissed: callback after ads dismissed.
  
```dart
FlutteAdmobAllInOneView(
    adUnitIdAndroid: FlutteAdmobAllInOneViewUtils.instance.adUnitIdAndroidRewardTesting,
    adUnitIdiOS: FlutteAdmobAllInOneViewUtils.instance.adUnitIdiOSRewardTesting,
    adType: FlutteAdmobAllInOneViewUtils.instance.adsRewardedType,
    onInitFunction: (function) {
      rewareFunction = function;
    },
    onRewardedEarn: (amount, type) {
      debugPrint(amount);
    },
    onInterstitialAdDismissed: () {
      print("onInterstitialAdDismissed: Reward Type");
    },
)
```

### Events

use `onInitFunction` to return function param for Interstitial Ads or Interstitial Rewarded Ads. 

```dart
onInitFunction: (function) {
  interstialRewareFunction = function;
}
```
use `onRewardedEarn` to received amount and type of rewarded.

```dart
onRewardedEarn: (amount, type) {
  debugPrint(amount);
}
```
use `onInterstitialAdDismissed` to callback after Interstitia closed.

```dart
onInterstitialAdDismissed: () {
  print("onInterstitialAdDismissed: Reward Type");
}
```
use `onBannerListener` to callback from admob banner type.

```dart
onBannerListener: (status, message) {
  debugPrint(message);
}
```
#

Hello everyone 👋

If you want to support me, feel free to do so. 

Thanks

#

សួស្ដី អ្នកទាំងអស់គ្នា👋 

បើ​អ្នក​ចង់​គាំទ្រ​ខ្ញុំ សូម​ធ្វើ​ដោយ​សេរី , 

សូមអរគុណ

<a  href="https://www.buymeacoffee.com/kdrtech" target="_blank">
<img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" height="41" />
</a>
