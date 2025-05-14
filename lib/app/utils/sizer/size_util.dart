part of "../utils.dart";

class SizerUtil {
  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  static double maxWidth = 500;

  static bool isWeb = false;

  /// Device's Orientation
  static late Orientation orientation;

  /// Type of Device
  ///
  /// This can either be mobile or tablet
  static late DeviceType deviceType;

  /// Device's Height
  static late double height;

  /// Device's Width
  static late double width;

  static late int gridCount;

  /// Sets the Screen's size and Device's Orientation,
  /// BoxConstraints, Height, and Width
  static void setScreenSize(BoxConstraints constraints, Orientation currentOrientation) {
    // Sets boxconstraints and orientation
    boxConstraints = constraints;
    orientation = currentOrientation;

    // Sets screen width and height
    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth;
      height = boxConstraints.maxHeight;
    } else {
      width = boxConstraints.maxHeight;
      height = boxConstraints.maxWidth;
    }

    if(boxConstraints.maxWidth > maxWidth) {
      isWeb = true;
    } else {
      isWeb = false;
    }

    // Sets ScreenType



    if (kIsWeb) {

      if(width > 600){
        deviceType = DeviceType.web;
        gridCount = 1;
      }else{
        deviceType = DeviceType.web;
        gridCount = 2;
      }


    } else if (Platform.isAndroid || Platform.isIOS) {
      if ((orientation == Orientation.portrait && width < 600) || (orientation == Orientation.landscape && height < 600)) {
        deviceType = DeviceType.mobile;
        // width = 360;
        // height = boxConstraints.maxHeight;
        gridCount = orientation == Orientation.portrait ? 1 : 2;
      } else {
        deviceType = DeviceType.tablet;
        gridCount = 1;
      }
    } else if (Platform.isMacOS) {
      deviceType = DeviceType.mac;
      gridCount = 2;
    } else if (Platform.isWindows) {
      deviceType = DeviceType.windows;
      gridCount = 2;
    } else if (Platform.isLinux) {
      deviceType = DeviceType.linux;
      gridCount = 2;
    } else {
      deviceType = DeviceType.fuchsia;
      gridCount = 2;
    }
  }

  //for responsive web
  static getWebResponsiveSize({smallSize, mediumSize, largeSize}) {
    return width < 600
        ? smallSize //'phone'
        : width >= 600 && width <= 1024
        ? mediumSize //'tablet'
        : largeSize; //'desktop';
  }
}

/// Type of Device
///
/// This can be either mobile or tablet
enum DeviceType { mobile, tablet, web, mac, windows, linux, fuchsia }