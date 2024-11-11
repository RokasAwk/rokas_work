enum Flavor {
  prod,
  dev,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Rokas Tools';
      case Flavor.dev:
        return 'Rokas Tools DEV';
      default:
        return 'title';
    }
  }

}
