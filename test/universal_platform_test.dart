import 'package:flutter_test/flutter_test.dart';

import 'package:universal_platform/universal_platform.dart';

void main() {
  test('mock platform', () {
    UniversalPlatform.mockPlatform(UniversalPlatformType.Web);
    expect(UniversalPlatform.isWeb, true);

    UniversalPlatform.mockPlatform(UniversalPlatformType.Android);
    expect(UniversalPlatform.isAndroid, true);
    expect(UniversalPlatform.isMobile, true);
    UniversalPlatform.mockPlatform(UniversalPlatformType.IOS);
    expect(UniversalPlatform.isIOS, true);
    expect(UniversalPlatform.isMobile, true);
    expect(UniversalPlatform.isApple, true);

    UniversalPlatform.mockPlatform(UniversalPlatformType.MacOS);
    expect(UniversalPlatform.isMacOS, true);
    expect(UniversalPlatform.isApple, true);
    expect(UniversalPlatform.isDesktop, true);
    UniversalPlatform.mockPlatform(UniversalPlatformType.Windows);
    expect(UniversalPlatform.isWindows, true);
    expect(UniversalPlatform.isDesktop, true);
    UniversalPlatform.mockPlatform(UniversalPlatformType.Linux);
    expect(UniversalPlatform.isLinux, true);
    expect(UniversalPlatform.isDesktop, true);
  });
}
