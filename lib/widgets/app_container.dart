import 'package:flutter/material.dart';
import 'package:portfolio/models/app_model.dart';

import '../constants.dart';

class MyAppContainer extends StatefulWidget {
  const MyAppContainer({super.key, required this.index});

  final int index;

  @override
  State<MyAppContainer> createState() => _MyAppContainerState();
}

class _MyAppContainerState extends State<MyAppContainer> {
  bool _hovered = false;
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        _isTapped = !_isTapped;
        setState(() {});
      },
      onHover: (value) {
        _hovered = value;
        setState(() {});
      },
      child: Container(
        height: widgetSize(
            size, size.width * 0.25, size.width * 0.3, size.width * 0.33),
        width: widgetSize(
            size, size.width * 0.25, size.width * 0.3, size.width * 0.33),
        color: _hovered || _isTapped ? kWhite : kYellow,
        padding: EdgeInsets.all(widgetSize(
            size, size.width * 0.03, size.width * 0.03, size.width * 0.02)),
        child: _hovered || _isTapped
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'App Highlights',
                    style: TextStyle(
                        fontFamily: 'SourceSerif4',
                        fontSize: widgetSize(
                            size, 20, size.width * 0.022, size.width * 0.024),
                        fontWeight: FontWeight.bold,
                        color: kBlack),
                  ),
                  SizedBox(height: size.width * 0.005),
                  Expanded(
                    child: ListView.builder(
                      itemCount: appDetails[widget.index].appHighlights.length,
                      itemBuilder: (context, i) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('•',
                                style: TextStyle(
                                    fontSize: widgetSize(size, 20, 15, 10),
                                    color: kBlack)),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                appDetails[widget.index].appHighlights[i],
                                style: TextStyle(
                                    fontFamily: 'Function',
                                    fontSize: widgetSize(size, 16,
                                        size.width * 0.016, size.width * 0.02),
                                    color: kBlack),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Text(
                    'Available on Playstore',
                    style: TextStyle(
                        fontFamily: 'SourceSerif4',
                        fontSize: widgetSize(
                            size, 16, size.width * 0.014, size.width * 0.016),
                        fontWeight: FontWeight.bold,
                        color: kBlack),
                  ),
                  SizedBox(height: size.width * 0.005),
                  InkWell(
                    onTap: () {
                      downloadApp(appDetails[widget.index].appUrl);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          vertical: widgetSize(size, 12, 8, 4)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: kYellow),
                      child: Center(
                          child: Text('Download Now',
                              style: TextStyle(
                                  color: kBlack,
                                  fontFamily: 'Function',
                                  fontWeight: FontWeight.bold))),
                    ),
                  )
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 20)
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/${appDetails[widget.index].appImage}',
                        height: widgetSize(size, size.width * 0.1,
                            size.width * 0.15, size.width * 0.15),
                      ),
                    ),
                  ),
                  SizedBox(height: size.width * 0.02),
                  Text(
                    appDetails[widget.index].appName,
                    style: TextStyle(
                        fontFamily: 'SourceSerif4',
                        fontSize: widgetSize(
                            size, 23, size.width * 0.024, size.width * 0.024),
                        fontWeight: FontWeight.bold,
                        color: kBlack),
                  ),
                  Text(
                    appDetails[widget.index].appDetail,
                    style: TextStyle(
                        fontFamily: 'Function',
                        fontSize: widgetSize(
                            size, 20, size.width * 0.022, size.width * 0.022),
                        color: kBlack),
                  ),
                ],
              ),
      ),
    );
  }
}
