class ImageAssetPath {
  const ImageAssetPath._();

  static String _path(String name, {String ext = 'png'}) {
    return 'assets/images/$name.$ext';
  }

  static final google = _path('google');
  static final logo = _path('logo');
}
