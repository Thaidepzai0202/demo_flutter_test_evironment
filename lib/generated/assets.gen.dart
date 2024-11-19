/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/Call.svg
  SvgGenImage get call => const SvgGenImage('assets/icon/Call.svg');

  /// File path: assets/icon/Close.svg
  SvgGenImage get close => const SvgGenImage('assets/icon/Close.svg');

  /// File path: assets/icon/Do Not Bleach.svg
  SvgGenImage get doNotBleach =>
      const SvgGenImage('assets/icon/Do Not Bleach.svg');

  /// File path: assets/icon/Do Not Tumble Dry.svg
  SvgGenImage get doNotTumbleDry =>
      const SvgGenImage('assets/icon/Do Not Tumble Dry.svg');

  /// File path: assets/icon/Do Not Wash.svg
  SvgGenImage get doNotWash => const SvgGenImage('assets/icon/Do Not Wash.svg');

  /// File path: assets/icon/Door to Door Delivery.svg
  SvgGenImage get doorToDoorDelivery =>
      const SvgGenImage('assets/icon/Door to Door Delivery.svg');

  /// File path: assets/icon/Down.svg
  SvgGenImage get down => const SvgGenImage('assets/icon/Down.svg');

  /// File path: assets/icon/Export.svg
  SvgGenImage get export => const SvgGenImage('assets/icon/Export.svg');

  /// File path: assets/icon/Filter.svg
  SvgGenImage get filter => const SvgGenImage('assets/icon/Filter.svg');

  /// File path: assets/icon/Forward Arrow.svg
  SvgGenImage get forwardArrow =>
      const SvgGenImage('assets/icon/Forward Arrow.svg');

  /// File path: assets/icon/Forward.svg
  SvgGenImage get forward => const SvgGenImage('assets/icon/Forward.svg');

  /// File path: assets/icon/Heart.svg
  SvgGenImage get heart => const SvgGenImage('assets/icon/Heart.svg');

  /// File path: assets/icon/Iron Low Temperature.svg
  SvgGenImage get ironLowTemperature =>
      const SvgGenImage('assets/icon/Iron Low Temperature.svg');

  /// File path: assets/icon/Location.svg
  SvgGenImage get location => const SvgGenImage('assets/icon/Location.svg');

  /// File path: assets/icon/Menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/icon/Menu.svg');

  /// File path: assets/icon/Plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icon/Plus.svg');

  /// File path: assets/icon/Refresh.svg
  SvgGenImage get refresh => const SvgGenImage('assets/icon/Refresh.svg');

  /// File path: assets/icon/Resize.svg
  SvgGenImage get resize => const SvgGenImage('assets/icon/Resize.svg');

  /// File path: assets/icon/Search.svg
  SvgGenImage get search => const SvgGenImage('assets/icon/Search.svg');

  /// File path: assets/icon/Shipping.svg
  SvgGenImage get shipping => const SvgGenImage('assets/icon/Shipping.svg');

  /// File path: assets/icon/Tag.svg
  SvgGenImage get tag => const SvgGenImage('assets/icon/Tag.svg');

  /// File path: assets/icon/Up.svg
  SvgGenImage get up => const SvgGenImage('assets/icon/Up.svg');

  /// File path: assets/icon/Voucher.svg
  SvgGenImage get voucher => const SvgGenImage('assets/icon/Voucher.svg');

  /// File path: assets/icon/backward.svg
  SvgGenImage get backward => const SvgGenImage('assets/icon/backward.svg');

  /// File path: assets/icon/shopping bag.svg
  SvgGenImage get shoppingBag =>
      const SvgGenImage('assets/icon/shopping bag.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        call,
        close,
        doNotBleach,
        doNotTumbleDry,
        doNotWash,
        doorToDoorDelivery,
        down,
        export,
        filter,
        forwardArrow,
        forward,
        heart,
        ironLowTemperature,
        location,
        menu,
        plus,
        refresh,
        resize,
        search,
        shipping,
        tag,
        up,
        voucher,
        backward,
        shoppingBag
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
