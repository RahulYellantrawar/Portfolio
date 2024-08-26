class AppDetails {
  final String appName;
  final String appDetail;
  final String appImage;
  final String screenShotsUrl;
  final String appUrl;
  final List<String> appHighlights;

  AppDetails({
    required this.appName,
    required this.appDetail,
    required this.appImage,
    required this.screenShotsUrl,
    required this.appUrl,
    required this.appHighlights,
  });
}

final List<AppDetails> appDetails = [
  AppDetails(
    appName: 'Teech',
    appDetail: 'A Text to Speech app',
    appImage: 'teech_logo.webp',
    screenShotsUrl: 'screenShotsUrl',
    appUrl: 'appUrl',
    appHighlights: [
      'Convert your text in to audio',
      '60+ Languages available',
      'Download speech file'
    ],
  ),
  AppDetails(
    appName: 'Discovery Agency',
    appDetail: 'A Real Estate Agent app',
    appImage: 'discovery_agency.webp',
    screenShotsUrl: 'screenShotsUrl',
    appUrl: 'appUrl',
    appHighlights: [
      'Users can Buy / Sell their property',
      'Agent directly approach to the user',
      'Authentication',
      'Choose location',
    ],
  ),
];
