class ImageAssetPath {
  const ImageAssetPath._();
  
  static final google = _path('google');
  static final logo = _path('logo');

  static String _path(String name, {String ext = 'png'}) {
    return 'assets/images/$name.$ext';
  }
}
