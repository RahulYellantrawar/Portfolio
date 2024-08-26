import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Color kYellow = const Color(0xFFFFC86B);
Color kWBlack = const Color(0xFF34353A);
Color kBlack = const Color(0xFF31333B);
Color kBlackBox = const Color(0xFF3D3E42);
Color kWhite = const Color(0xFFF9F9F9);

double widgetSize(Size size, double desktop, tab, mobile) {
  return size.width > 1100
      ? desktop
      : size.width > 650 && size.width < 1100
          ? tab
          : mobile;
}

Text header(Size size, String title) {
  return Text(
    title,
    style: TextStyle(
        fontFamily: 'SourceSerif4',
        fontSize: widgetSize(size, 35, 30, 20),
        color: kWhite,
        fontWeight: FontWeight.bold),
  );
}

void launchLinkedInProfile() async {
  String profileUrl =
      'https://www.linkedin.com/in/rahul-yellantrawar-2042ba225';
  if (await canLaunchUrl(Uri.parse(profileUrl))) {
    await launchUrl(Uri.parse(profileUrl));
  }
}

void launchGitHubProfile() async {
  String profileUrl = 'https://github.com/RahulYellantrawar';
  if (await canLaunchUrl(Uri.parse(profileUrl))) {
    await launchUrl(Uri.parse(profileUrl));
  }
}
