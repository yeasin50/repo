//while all images are png here
_imagePath(String imageName) => "assets/images/$imageName.png";

class AppAssetImage {
  static final String homeScreen = _imagePath("start_page");
  static final String levelScreen = _imagePath("level_page");
  static final String levelMediumScreen = _imagePath("level_medium_page");
  static final String levelHardScreen = _imagePath("level_hard_page");
}
