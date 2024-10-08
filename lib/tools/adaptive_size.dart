class AdaptiveSize {
  static double getAspectRatio(double width) {
    if (600 < width && width <= 1200) return width / 120;
    if (1200 < width) return width / 180;
    return width / 60;
  }

  static int getGridCount(double width) {
    if (600 < width && width <= 1200) return 2;
    if (1200 < width) return 3;
    return 1;
  }

  static double getCaptionFontSize(double width) {
    double w = width / 28;
    if (w > 28) w = 28;
    return w;
  }

  static double getPollFontSize(double width) {
    double w = width / 30;
    if (w > 26) w = 26;
    return w;
  }

  static double getMainFontSize(double width) {
    double w = width / 34;
    if (w > 24) w = 22;
    return w;
  }
}
