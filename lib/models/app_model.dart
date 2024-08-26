class AppDetails {
  final String appName;
  final String appDetail;
  final String appImage;
  final String appUrl;
  final List<String> appHighlights;

  AppDetails({
    required this.appName,
    required this.appDetail,
    required this.appImage,
    required this.appUrl,
    required this.appHighlights,
  });
}

final List<AppDetails> appDetails = [
  AppDetails(
    appName: 'Teech',
    appDetail: 'A Text to Speech app',
    appImage: 'teech_logo.webp',
    appUrl: 'https://play.google.com/store/apps/details?id=com.sanagara.teeech',
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
    appUrl:
        'https://play.google.com/store/apps/details?id=com.discovery_agency.real_estate',
    appHighlights: [
      'Users can Buy / Sell their property',
      'Agent directly approach to the user',
      'Authentication',
      'Choose location',
    ],
  ),
];
