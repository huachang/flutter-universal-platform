library universal_platform;

import 'src/universal_platform_locator.dart'
    if (dart.library.io) 'src/platform_io.dart';

export 'src/universal_platform_locator.dart'
    if (dart.library.io) 'src/platform_io.dart';

/// mock platform for testing
/// example:
/// ```
/// UniversalPlatform.mockPlatform(UniversalPlatformType.Web);
/// UniversalPlatform.isWeb // true
/// ```
abstract class UniversalPlatform {
  static void mockPlatform(UniversalPlatformType platformType) {
    universalPlatformType = platformType;
  }

  static UniversalPlatformType universalPlatformType = currentUniversalPlatform;
  static UniversalPlatformType get value => universalPlatformType;

  static bool get isWeb => universalPlatformType == UniversalPlatformType.Web;
  static bool get isMacOS =>
      universalPlatformType == UniversalPlatformType.MacOS;
  static bool get isWindows =>
      universalPlatformType == UniversalPlatformType.Windows;
  static bool get isLinux =>
      universalPlatformType == UniversalPlatformType.Linux;
  static bool get isAndroid =>
      universalPlatformType == UniversalPlatformType.Android;
  static bool get isIOS => universalPlatformType == UniversalPlatformType.IOS;
  static bool get isFuchsia =>
      universalPlatformType == UniversalPlatformType.Fuchsia;

  static bool get isApple =>
      UniversalPlatform.isIOS || UniversalPlatform.isMacOS;
  static bool get isMobile =>
      UniversalPlatform.isIOS || UniversalPlatform.isAndroid;
  static bool get isDesktop => isLinux || isMacOS || isWindows;
  static bool get isDesktopOrWeb =>
      UniversalPlatform.isDesktop || UniversalPlatform.isWeb;

  static String get operatingSystem {
    switch (value) {
      case UniversalPlatformType.Web:
        return "web";
      case UniversalPlatformType.MacOS:
        return "macos";
      case UniversalPlatformType.Windows:
        return "windows";
      case UniversalPlatformType.Linux:
        return "linux";
      case UniversalPlatformType.Android:
        return "android";
      case UniversalPlatformType.IOS:
        return "ios";
      case UniversalPlatformType.Fuchsia:
        return "fuchsia";
    }
  }
}

enum UniversalPlatformType {
  Web,
  Windows,
  Linux,
  MacOS,
  Android,
  Fuchsia,
  IOS,
}
