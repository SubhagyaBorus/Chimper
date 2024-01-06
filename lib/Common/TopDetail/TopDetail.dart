import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:responsive_builder/responsive_builder.dart";

class TopDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RichTextWidget("+1 292 3293 4238", "info@yourdomain.com"),
                Row(
                  children: [
                    SocialMedia(FontAwesomeIcons.facebookF),
                    SizedBox(
                      width: sizingInformation.deviceScreenType ==
                              DeviceScreenType.mobile
                          ? 1
                          : 3,
                    ),
                    SocialMedia(FontAwesomeIcons.twitter),
                    SizedBox(
                      width: sizingInformation.deviceScreenType ==
                              DeviceScreenType.mobile
                          ? 1
                          : 3,
                    ),
                    SocialMedia(FontAwesomeIcons.instagram),
                    SizedBox(
                      width: sizingInformation.deviceScreenType ==
                              DeviceScreenType.mobile
                          ? 1
                          : 3,
                    ),
                    SocialMedia(FontAwesomeIcons.linkedinIn)
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
          )
        ],
      ),
    );
  }
}

Widget SocialMedia(IconData iconData) {
  return Container(
    child: IconButton(
        onPressed: () {},
        icon: FaIcon(
          iconData,
          color: Color.fromRGBO(13, 12, 181, 5),
          size: 16,
        )),
  );
}

Widget RichTextWidget(String number, String mail) {
  return ResponsiveBuilder(
    builder: (context, sizingInformation) => Container(
      child: sizingInformation.deviceScreenType == DeviceScreenType.desktop
          ? RichText(
              text: TextSpan(children: [
              TextSpan(
                text: "Phone:  ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: number,
                  style: TextStyle(
                      color: Color.fromRGBO(13, 12, 181, 5),
                      fontSize: 15,
                      letterSpacing: 1)),
              TextSpan(text: "    "),
              TextSpan(
                text: "Email:  ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: mail,
                  style: TextStyle(
                      color: Color.fromRGBO(13, 12, 181, 5),
                      fontSize: 15,
                      letterSpacing: 1))
            ]))
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Phone:  ",
                    style: TextStyle(
                        fontSize: sizingInformation.deviceScreenType ==
                                DeviceScreenType.mobile
                            ? 12
                            : 15,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: number,
                      style: TextStyle(
                          color: Color.fromRGBO(13, 12, 181, 5),
                          fontSize: sizingInformation.deviceScreenType ==
                                  DeviceScreenType.mobile
                              ? 12
                              : 15,
                          letterSpacing: 1))
                ])),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Email:  ",
                    style: TextStyle(
                        fontSize: sizingInformation.deviceScreenType ==
                                DeviceScreenType.mobile
                            ? 12
                            : 15,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: mail,
                      style: TextStyle(
                          color: Color.fromRGBO(13, 12, 181, 5),
                          fontSize: sizingInformation.deviceScreenType ==
                                  DeviceScreenType.mobile
                              ? 12
                              : 15,
                          letterSpacing: 1))
                ]))
              ],
            ),
    ),
  );
}
